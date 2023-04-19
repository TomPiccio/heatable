#include <Servo.h>
#include <OneWire.h>
#include <FastLED.h>

//PINS

#define Motor_Pin 6
#define E2A_1 8 //ESP32 to Arduino (Button_3) //Lift 21
#define E2A_2 9 //ESP32 to Arduino (Button_2) //Start 19
#define E2A_3 10 //ESP32 to Arduino (Button_1) //Warm 18
#define HeatSignalPin 11
#define WarmSignalPin 12
#define tempsensorpin A0
#define IR_Pin_1 A1
#define QRD1114pin A4
#define IR_Pin_2 A3
#define LED_PIN 7//NEOPIXEL NANO Pin number 

//Servo Variables
Servo Motor; //6
int Motor_angle = 0;

//Thermal Sensor
int low_tempcounter = 0;
int high_tempcounter = 0;
float temperature = -1000.0;


OneWire ds (tempsensorpin);
const float low_temp_threshold = 55;
const float high_temp_threshold = 65;
const float overheat_temp_threshold = 100;
bool TEMP_HEAT_STATE = false;

//LED Setup 

#define NUM_LEDS    16//default settings 
#define BRIGHTNESS  20//varies from 0-100 
#define LED_TYPE    WS2812B//default settings 
CRGB leds[NUM_LEDS];
const int IR_Threshold = 600;
const float Lid_IR_Threshold = 3.5;
unsigned long heat_button_time = 0;
unsigned long heat_time = 0;
unsigned long warm_button_time = 0;
const unsigned long cook_time = 1500000;
String CODE = "";

//Timer Variables
unsigned long Times[10] = {0,0,0,0,0,0,0,0,0,0}; //Servo, Thermal Sensor, IR_Voltage, Warming Timer, Heating Timer
unsigned long last_time;
unsigned long curr_time;
unsigned long l_time;

void setup() {
  last_time = millis();
  l_time = millis();
  Serial.begin(9600);
  //define the servo connected pin on arduino
  Motor.attach(Motor_Pin);

  //Setup Pins
  pinMode(Motor_Pin, OUTPUT);
  Motor.write(180);
  
  pinMode(E2A_1, INPUT);
  pinMode(E2A_2, INPUT);
  pinMode(E2A_3, INPUT);
  pinMode(IR_Pin_1, INPUT);
  pinMode(IR_Pin_2, INPUT);
  pinMode(QRD1114pin, INPUT);
  pinMode(HeatSignalPin, OUTPUT);
  pinMode(WarmSignalPin, OUTPUT);
  FastLED.addLeds<LED_TYPE, LED_PIN>(leds,NUM_LEDS);
  FastLED.setBrightness(BRIGHTNESS);
  
}


//returns the temperature from temp sensor in degree celsius 
float getTemp() {
  byte data[12];
  byte addr[8];

  if(!ds.search(addr)) {
    // this is if there is no more sensors on chain, hence reset search
    ds.reset_search();
    return -1000;
  }
  if(OneWire::crc8(addr, 7) != addr[7]) {
    Serial.println("CRC is not valid!");
    return -1000;
  }
  if(addr[0] != 0x10 && addr[0] != 0x28) {
    Serial.print("Device is not registered");
    return -1000;
  }
  ds.reset();
  ds.select(addr);
  ds.write(0x44, 1); // start conversion

  byte present = ds.reset();
  ds.select(addr);
  ds.write(0xBE); //read Scratchpad

  for (int i = 0; i < 9; i++) { //we need 9 bytes 
    data[i] = ds.read();
  }
  
  ds.reset_search();

  byte MSB = data[1];
  byte LSB = data[0];

  float tempRead = ((MSB << 8) | LSB); //using two's compliment
  float TemperatureSum = tempRead / 16;
  bool result = TEMP_HEAT_STATE;
  if (TemperatureSum < low_temp_threshold) {
    low_tempcounter++;
  } 
  if ((low_tempcounter > 3) && (!TEMP_HEAT_STATE)) {
    result = true;
  }
  if ((TemperatureSum > overheat_temp_threshold)||((digitalRead(E2A_3)==HIGH)&&(TemperatureSum > high_temp_threshold))) {
    high_tempcounter++;
  }
  if ((high_tempcounter > 3) && (TEMP_HEAT_STATE)) {
    result = false;
  }
  TEMP_HEAT_STATE = result;
  return TemperatureSum;
}

void ThermalCode(){
  temperature = round(getTemp()*10.0)/10.0;
}

void CAMCode() {
  int ctbvalue = digitalRead(E2A_1);
  if(ctbvalue == HIGH&& (Food_Sensor()) &&(1-Lid_Sensor())) {
    // bSerial.println("LIFT CAM");
    Motor_angle = 0;
  }
  else{
    //Serial.println("SINK CAM");
    Motor_angle = 180;
  }
  Motor.write(Motor_angle);
}

void Time_Adder(){
  unsigned long current_time = millis();
  unsigned long interval = current_time - last_time;
  last_time = current_time;
  //Serial.print("int: ");
  //Serial.println(interval);
  //Serial.println("4: ");
  for(int i = 0; i < 10; i++){
    Times[i] += interval;
  }
}

void Timer(void fxn(), int Time, int index){
  if(Times[index] > Time){
    fxn();
    Times[index] -= Time;
  }
}

void Heat_Signal(){
  curr_time = millis();
  unsigned long t_interval = curr_time-l_time;
  l_time = curr_time;
  int Heat_Button_Val = digitalRead(E2A_2);
  int Warm_Button_Val = digitalRead(E2A_3);
  if(Heat_Button_Val == HIGH){
    heat_button_time += t_interval;
  }
  else{
    heat_button_time = 0;
  }
  if(Warm_Button_Val == HIGH){
    warm_button_time += t_interval;
  }
  else{
    warm_button_time = 0;
  }
  bool Allow_Heating = (TEMP_HEAT_STATE && Food_Sensor() && Lid_Sensor());
  String code = "H";
  if(Allow_Heating && (heat_button_time > 1000) && (heat_time < cook_time)){
    digitalWrite(HeatSignalPin,HIGH);
    digitalWrite(WarmSignalPin,LOW);
    heat_time+=t_interval;
    code += "10";
  }
  else if(Allow_Heating && (warm_button_time > 1000)){
    digitalWrite(HeatSignalPin,LOW);
    digitalWrite(WarmSignalPin,HIGH);
    if(heat_time > cook_time/2){
      heat_time -= t_interval;
    }
    code += "01";
  }
  else{
    digitalWrite(WarmSignalPin,LOW);
    
    digitalWrite(HeatSignalPin,LOW);
    if(heat_time > t_interval){
      heat_time -= t_interval;
    }
    code += "00";
  }
  code += String(Food_Sensor());
  code += String(Lid_Sensor());
  code += "C";
  code += String(heat_time);
  CODE = code;
}
int Food_Counter = 0;
int Food_Sensor(){
  int IR_Voltage_1 = analogRead(IR_Pin_1);
  int IR_Voltage_2 = analogRead(IR_Pin_2);
  if((IR_Voltage_1 < IR_Threshold)&& (IR_Voltage_2< IR_Threshold)){
    Food_Counter++;
  }
  else{
    Food_Counter=0;
  }
  return (int)(Food_Counter>3);
}

int Lid_Counter = 0;
int Lid_Sensor(){
  int proximityADC = analogRead(QRD1114pin);
  float proximityV = (float)proximityADC * 5.0/1023.0;
  if(proximityV < Lid_IR_Threshold){
    Lid_Counter++;
  }
  else{
    Lid_Counter=0;
  }
  return (int)(Lid_Counter>3);
}

//Function to kill animation/display non lit up LED ring  
int Stop_Animation(){
  for (int i = 0; i < 16 ; i++){
    leds[i] = CRGB(0,0,0); //led turns off  
  }
}

int warming_counter = -1; 

void Heating_Animation(){
  int heating_counter = heat_time*16/cook_time;
  int blink_state = Times[4]/300;
  //LED RING IS RED INTIALLY TO SHOW THAT FOOD IS HEATED UP
  if(Times[4]<500){
    for (int a = 0; a < 16; a++){
      leds[a] = CRGB(0,255,0); //LED COLOUR CHANGE POINT 1(change red)
    }
  }
  else if (heating_counter<17){
    for (int b = 1; b < heating_counter; b++){
      leds[b] = CRGB(255,0,0); //led blinks red 
     }
  }
  else{
    if(blink_state%2==0){
      for (int l = 0; l < 16 ; l++){
         leds[l] = CRGB(255,0,0); //led blinks red 
      }
    }
    else{
      for (int l = 0; l < 16 ; l++){
         leds[l] = CRGB(0,0,0); //led blinks red 
      }
    }
  }
}

unsigned long Warm_Anim_Time = 4000;
void Warming_Animation(){
  if (Times[3] >Warm_Anim_Time){
    Times[3] = Times[3]%Warm_Anim_Time;
  }
  int Warming_counter = Times[3]*16/Warm_Anim_Time;
  if(Warming_counter>=16){
    Warming_counter = Warming_counter%16;
  }
  Stop_Animation();
  leds[Warming_counter] = CRGB(100,255,0);
  if(Warming_counter-1>=0){
    leds[Warming_counter-1] = CRGB(80,204,0);
  }
  else{
    leds[Warming_counter+15] = CRGB(80,204,0);
  }
  if(Warming_counter-2>=0){
    leds[Warming_counter-2] = CRGB(60,153,0);
  }
  else{
    leds[Warming_counter+14] = CRGB(60,153,0);
  }
  if(Warming_counter-3>=0){
    leds[Warming_counter-3] = CRGB(40,102,0);
  }
  else{
    leds[Warming_counter+13] = CRGB(40,102,0);
  }
  if(Warming_counter-4>=0){
    leds[Warming_counter-4] = CRGB(20,51,0);
  }
  else{
    leds[Warming_counter+12] = CRGB(20,51,0);
  }
  
}

unsigned long FA_Anim_Time = 8000;
void FA_Animation(){
  int FA_counter = Times[5]*8/FA_Anim_Time;
  Serial.println(FA_counter);
  Stop_Animation();
  if (FA_counter < 5){
    for (int d = 5; d < 11 ; d++){
      if(d<FA_counter+6){
        leds[d] = CRGB(0,0,255);
      }
      else{
        leds[d] = CRGB(0,0,0);
      }
    }
  }
  else if(FA_counter > 20){
    for (int d = 5; d < 11 ; d++){
      leds[d] = CRGB(0,0,0);
    }
  }
  else if(FA_counter%2 == 1){
    for (int d = 5; d < 11 ; d++){
      leds[d] = CRGB(0,0,255);
    }
    leds[12] = CRGB(0,0,255);
    leds[3] = CRGB(0,0,255); 
  }
  else if(FA_counter%2 == 0){
    for (int d = 5; d < 11 ; d++){
      leds[d] = CRGB(0,0,255);
    }
    leds[12] = CRGB(0,0,0);
    leds[3] = CRGB(0,0,0); 
  }
}

unsigned long Error_Time = 8000;
void Error_Animation(){
  int ER_counter = Times[8]*16/Error_Time;

  if(ER_counter%2 == 0){
    for (int d = 0; d < 16 ; d++){
      leds[d] = CRGB(0,255,0);
    }
  }
  else{
    Stop_Animation();
  }
}
unsigned long Cooked_Time = 8000;
void Cooked_Animation(){
  int ER_counter = Times[9]*16/Cooked_Time;

  if(ER_counter%2 == 0){
    for (int d = 0; d < 16 ; d++){
      leds[d] = CRGB(255,0,0);
    }
  }
  else{
    Stop_Animation();
  }
}

bool Heat_State = false;
bool Warm_State = false;
bool FA_State = false;
void LED_loop() {
//Initializing non-lit up state when not in use
  bool Allow_Heating = (TEMP_HEAT_STATE && Food_Sensor() && Lid_Sensor());
  if(digitalRead(E2A_2)==1 && digitalRead(E2A_1)==1){
    for (int d = 0; d < 16 ; d++){
      leds[d] = CRGB(0,200,255);
    }
  }
  else if(digitalRead(E2A_2)==1 && heat_time >= cook_time){
    Cooked_Animation();
    //Serial.println("heats");
    //Serial.println(Times[4]);
  }
  else if(digitalRead(E2A_2)==1 && !Heat_State && Allow_Heating){
    Stop_Animation();
    Times[4] = 0;
    Heating_Animation();
    Heat_State = true;
  }
  else if(digitalRead(E2A_2)==1 && Allow_Heating){
    Heating_Animation();
    //Serial.println("heats");
    //Serial.println(Times[4]);
  }
  else if(digitalRead(E2A_3)==1 && !Warm_State && Allow_Heating){
    Stop_Animation();
    Times[3] = 0;
    Warming_Animation();
    Warm_State = true;
  }
  else if(digitalRead(E2A_3)==1 && Allow_Heating){
    //Serial.println("Warms");
    //Serial.println(Times[3]);
    Warming_Animation();
  }
  else if(digitalRead(E2A_1)==1 && !FA_State && Food_Sensor() && Lid_Sensor()){
    Stop_Animation();
    Times[5] = 0;
    FA_Animation();
    FA_State = true;
  }
  else if(digitalRead(E2A_1)==1 && Food_Sensor() && (1-Lid_Sensor()) ){
    //Serial.println("Lift");
    //Serial.println(Times[5]);
    FA_Animation();
  }
  else if(digitalRead(E2A_1)==1 || digitalRead(E2A_2)==1 ||digitalRead(E2A_3)==1){
    Error_Animation();
  }
  else{
    Stop_Animation();
    Heat_State = false;
    Warm_State = false;
    FA_State = false;
  }
  FastLED.show();
}
int transmit_counter = 0;
void codeMaker(){
  String Output = "N"+String(transmit_counter)+CODE;
  transmit_counter+=1;
  Output += "T"+String(temperature);
  Serial.println(Output);
}

void BTN_PRINTER(){
  String Output = "B"+String(digitalRead(E2A_1))+String(digitalRead(E2A_2))+String(digitalRead(E2A_3));
  Serial.println(Output);
}

void Sensor_Update(){
  Lid_Sensor();
  Food_Sensor();
}
void loop() {
  Timer(CAMCode,1300,0);
  Timer(ThermalCode,1900,1);
  Timer(Heat_Signal,1100,2);
  Timer(codeMaker,2900,6);
  Timer(Sensor_Update,700,7);
  Time_Adder();
  LED_loop();
  
  delay(100);
}
