#include <WiFi.h>
#include <WiFiMulti.h>
#include <Arduino.h>
#include <EEPROM.h>

//ESP32 Pins
#define LED 2
#define Button_1 13 //Warm 
#define Button_2 25 //Start
#define Button_3 36 //Lift
#define E2A_1 5 //ESP32 to Arduino (Button_1)Warm 
#define E2A_2 18 //ESP32 to Arduino (Button_2 Start
#define E2A_3 19 //ESP32 to Arduino (Button_3)Lift
#define RX_Pin 16
#define TX_Pin 17
#define B1_Power 12
#define B2_Power 26
#define B3_Power 32

//Flash memory 
#define EEPROM_SIZE 3
//String letters[10] = {"A","B","C","D","E","F","G","H","I","J"};
unsigned long lastDebounceTime = 0;
unsigned long debounceDelay = 50; 
String status_str = "Idle";
int status_int = 0;

//Seat_Variables
bool Heating = false;
String readings = " ";
bool Warming = false;
bool IoTError = true; //False means no error
bool RXTXError = true;
float Temperature = 0.0;
bool SeatAssignState = false;
String SeatNum = "UND";
bool Food_Sensors = false; // false means none detected
bool Lid_Sensor = false; // false means none detected
float heat_time = 0;
const float overheat_temp_threshold = 100;
bool overheat = false;

#define WIFI_NAME_1 "Tommm"
#define WIFI_PW_1 "TomatoJuice"
#define WIFI_NAME_2 "Hui Min"
#define WIFI_PW_2 "M3gum!99"
#define WIFI_NAME_3 "Canmon123"
#define WIFI_PW_3 "cannot@123"

#include <Firebase_ESP_Client.h>
#include "addons/TokenHelper.h"
#include "addons/RTDBHelper.h"
#define API_KEY "AIzaSyAjmGIgbOFFQ9pjilfH1SJD4gHSmiGBrtE"
#define DATABASE_URL "https://heatable-df0b1-default-rtdb.asia-southeast1.firebasedatabase.app/" 
FirebaseData fbdo;
FirebaseAuth auth;
FirebaseConfig config;
unsigned long sendDataPrevMillis = 0;
int FB_count = 0;
bool signupOK = false;
bool Paired = false;
WiFiMulti wifiMulti;
const uint32_t timeout = 10000;
int count = 0;

//Timer Variables
unsigned long LongPress_Duration[8] = {0,0,0,0,0,0,0,0}; // Cooldown_0,Cooldown_1,Cooldown_2,A,Cooldown_3,B,C,Cooldown_4
unsigned long Times[8] = {0,0,0,0,0,0,0,0};
unsigned long last_time;
unsigned long curr_time;
unsigned long l_time;
unsigned long last_millis = millis();
int longpress_state = 0;

void FBase_Setup(){
  config.api_key = API_KEY;
  config.database_url = DATABASE_URL;

  if (Firebase.signUp(&config, &auth, "", "")){
    Serial.println("Firebase Sign-up Finished");
    signupOK = true;
    digitalWrite(E2A_1,HIGH);
  digitalWrite(E2A_2,HIGH);

  delay(500);
  digitalWrite(E2A_1,LOW);
  digitalWrite(E2A_2,LOW);
  digitalWrite(E2A_3,LOW);
  
  }
  else{
    Serial.println(config.signer.signupError.message.c_str());
  }

  config.token_status_callback = tokenStatusCallback;

  Firebase.begin(&config, &auth);
  Firebase.reconnectWiFi(true); 
}

String SeatNumReader(){
  if(EEPROM.read(0) == 255){
    Paired = false;
    return "UND";
  }
  Paired = true;
  return String(char(EEPROM.read(1)))+String(char(EEPROM.read(2)))+String(char(EEPROM.read(0)));
}

void setFB(String Var_Name, int Value){
  if(Firebase.RTDB.setInt(&fbdo, "/"+Var_Name, Value)){
    //Serial.println(Var_Name+ " Succeeded Upload");
    Serial.print("");
  }
  else{
    Serial.println(Var_Name+ "FAILED due to" + fbdo.errorReason());
  }
}

void setFloatFB(String Var_Name, int Value){
  if(Firebase.RTDB.setFloat(&fbdo, "/"+Var_Name, Value)){
    //Serial.println(Var_Name+ " Succeeded Upload");
    Serial.print("");
  }
  else{
    Serial.println(Var_Name+ "FAILED due to" + fbdo.errorReason());
  }
}

void setStringFB(String Var_Name, String Value){
  if(Firebase.RTDB.setString(&fbdo, "/"+Var_Name, Value)){
    //Serial.println(Var_Name+ " Succeeded Upload");
    Serial.print("");
  }
  else{
    Serial.println(Var_Name+ "FAILED due to" + fbdo.errorReason());
  }
}

void setBoolFB(String Var_Name, bool Value){
  if(Firebase.RTDB.setBool(&fbdo, "/"+Var_Name, Value)){
    //Serial.println(Var_Name+ " Succeeded Upload");
    Serial.print("");
  }
  else{
    Serial.println(Var_Name+ "FAILED due to" + fbdo.errorReason());
  }
}

int getIntFB(String Var_Name){
  if (Firebase.RTDB.getInt(&fbdo, "/"+Var_Name)) {
      return fbdo.intData();
  }
  else {
    Serial.println(fbdo.errorReason());
  }
  return 0;
}

String getStringFB(String Var_Name){
  if (Firebase.RTDB.getString(&fbdo, "/"+Var_Name)) {
    return fbdo.stringData();
  }
  else {
    Serial.println(fbdo.errorReason());
  }
  return "";
}

bool getBoolFB(String Var_Name){
  if (Firebase.RTDB.getInt(&fbdo, "/"+Var_Name)) {
      return fbdo.boolData();
  }
  else {
    Serial.println(fbdo.errorReason());
  }
  return false;
}

void setup() {
  last_time = millis();
  l_time = millis();
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial2.begin(9600, SERIAL_8N1, RX_Pin, TX_Pin);
  pinMode(LED, OUTPUT);
  pinMode(Button_1, INPUT);
  pinMode(Button_2, INPUT);
  pinMode(Button_3, INPUT);
  pinMode(E2A_1, OUTPUT);
  pinMode(E2A_2, OUTPUT);
  pinMode(E2A_3, OUTPUT);
  delay(10);
  pinMode(B1_Power, OUTPUT);
  pinMode(B2_Power, OUTPUT);
  pinMode(B3_Power, OUTPUT);
  WiFi.mode(WIFI_STA);
  digitalWrite(E2A_1,LOW);
  digitalWrite(E2A_2,LOW);
  digitalWrite(E2A_3,LOW);
  digitalWrite(B1_Power,LOW);
  digitalWrite(B2_Power,LOW);
  digitalWrite(B3_Power,LOW);
  IoTError = true;
  
  wifiMulti.addAP(WIFI_NAME_1,WIFI_PW_1);
  wifiMulti.addAP(WIFI_NAME_2,WIFI_PW_2);
  wifiMulti.addAP(WIFI_NAME_3,WIFI_PW_3);
  

  int n = WiFi.scanNetworks();

  Serial.println("Scan Done!");

  if(n == 0){
    Serial.println("No WiFi Detected!");
  }
  else{
    
    Serial.print(n);
    Serial.println(" networks found!");
    for (int i = 0; i < n; i ++){
      Serial.print(i+1);
      Serial.print(": ");
      Serial.print(WiFi.SSID(i));
      if((WiFi.SSID(i)==WIFI_NAME_1)||(WiFi.SSID(i)==WIFI_NAME_2)||(WiFi.SSID(i)==WIFI_NAME_3)){
        Serial.print(" Detected! ");
      }
      Serial.print(" (");
      Serial.print(WiFi.RSSI(i));
      Serial.print(")");
      Serial.println((WiFi.encryptionType(i) == WIFI_AUTH_OPEN)?" ":"*");
      delay(10);
    }
  }

  Serial.println("Connecting Wifi..");
  if(wifiMulti.run() == WL_CONNECTED){
    IoTError = false;
    digitalWrite(LED, HIGH);
    Serial.println("");
    Serial.println("WiFI connected!");
    Serial.print("IP Address: ");
    Serial.println(WiFi.localIP());
  }
  if(IoTError == false){
    FBase_Setup();
  }
  
  EEPROM.begin(EEPROM_SIZE);
  if(EEPROM.read(0) == 255){
    SeatNum = "UND";
  }
  SeatNum = SeatNumReader();
  if(SeatNum == "UND"){
    int UNDNum = getIntFB("UND_Trays_Num");
    setFB("UND_Trays_Num",UNDNum+1);
  }
}
int Unpair_Counter = 0;

void FBase(){
  if(signupOK && Firebase.ready() && (millis() - sendDataPrevMillis >100 || sendDataPrevMillis == 0)){
    
    sendDataPrevMillis = millis();
    setFB(SeatNum+"/"+"Button_1", digitalRead(Button_1));
    setFB(SeatNum+"/"+"Button_2", digitalRead(Button_2));
    setFB(SeatNum+"/"+"Button_3", digitalRead(Button_3));
    setFB(SeatNum+"/"+"Long_press_state", longpress_state);
    setBoolFB(SeatNum+"/"+"Heating",Heating);
    setBoolFB(SeatNum+"/"+"Warming",Warming);
    setBoolFB(SeatNum+"/"+"Food_Sensors",Food_Sensors);
    setBoolFB(SeatNum+"/"+"Lid_Sensor",Lid_Sensor);
    setBoolFB(SeatNum+"/"+"RXTX_Error",RXTXError);
    setFloatFB(SeatNum+"/"+"Temperature", Temperature);
    setFloatFB(SeatNum+"/"+"LastUpdated", last_millis);
    setFloatFB(SeatNum+"/"+"Heat_time", heat_time);
    setBoolFB(SeatNum+"/"+"OverHeat", overheat);
    setStringFB(SeatNum+"/"+"Reading",readings);
    setFB(SeatNum+"/"+"status", status_int);
    setStringFB(SeatNum+"/"+"Status",status_str);
    if(!getBoolFB(SeatNum+"/"+"Paired") && Paired){
      Unpair_Counter +=1;
    }
    else{
      Unpair_Counter = 0;
    }
    if(Unpair_Counter > 3){
      SeatUnpair();
      Paired = false;
    }
    setBoolFB(SeatNum+"/"+"Paired", Paired);
  }
}



void ButtonCombi(int A,int B,int C){
  int ind = 7-(4*A+2*B+C);
  LongPressDetector();
  int temp = LongPress_Duration[ind];
  int temp2 = LongPress_Duration[longpress_state];
  for(int i = 0; i<8;i++){
    LongPress_Duration[i]=0;
  }
  LongPress_Duration[ind] = temp+millis()-last_millis;
  LongPress_Duration[longpress_state] = temp2+millis()-last_millis;
  last_millis = millis();
}

void SeatAssign(){
  Serial.print("SEAT ASSIGNING");
  if(signupOK){
    bool SeatAssignBool = getBoolFB("SeatAssignSet");
    if(SeatAssignBool){
      if(SeatNum == "UND"){
        int UNDNum = getIntFB("UND_Trays_Num");
        Firebase.RTDB.setInt(&fbdo,"UND_Trays_Num",UNDNum-1);
      }
      String Temp_SeatNum =getStringFB("SeatAssign");
      
      if(Temp_SeatNum == "UND"){
        int UNDNum = getIntFB("UND_Trays_Num");
        setFB("UND_Trays_Num",UNDNum+1);
        EEPROM.write(0, 255);
        EEPROM.commit();
      }
      else{
        
        Paired = true;
        EEPROM.write(0, Temp_SeatNum[2]);
        EEPROM.write(1, Temp_SeatNum[0]);
        EEPROM.write(2, Temp_SeatNum[1]);
        EEPROM.commit();
        SeatNum = SeatNumReader();
        setBoolFB(SeatNum+"/"+"Paired", true);
      }
      setStringFB("SeatAssign","UND");
      setBoolFB("SeatAssignSet",false);
      Serial.print("SEAT ASSIGNED");
      longpress_state=0;
      Reset_Button();
    }
  }
}
void SeatUnpair(){
  Serial.print("SEAT UNPAIRING");
  if(signupOK){
    int UNDNum = getIntFB("UND_Trays_Num");
    setFB("UND_Trays_Num",UNDNum+1);
    EEPROM.write(0, 255);
    EEPROM.commit();
  }
}
void LongPressDetector(){
  if((longpress_state==0 || longpress_state==1)&&(LongPress_Duration[3]> 3000)){
    longpress_state=1;
    if(LongPress_Duration[3]>   10000){
      longpress_state=0;
    }
  }
  else if((longpress_state==1 || longpress_state==2)&&(LongPress_Duration[5]> 3000) &&(LongPress_Duration[5]< 7000)){
    longpress_state=2;
    if(LongPress_Duration[5]> 10000){
      longpress_state=0;
    }
  }
  else if((longpress_state==2 || longpress_state==4)&&(LongPress_Duration[6]> 3000)){
    longpress_state=4;
  }
  if((longpress_state==1)&& (LongPress_Duration[1]>5500) && (LongPress_Duration[5]< 500)){
    longpress_state=0;
  }
  if((longpress_state==2)&& (LongPress_Duration[2]>5500) && (LongPress_Duration[6]< 500)){
    longpress_state=0;
  }
  if((longpress_state==4)&& (LongPress_Duration[6]<500)){
    longpress_state=0;
  }
  if(LongPress_Duration[4] > 3000){
    SeatAssign();
  }
}

void WiFiCheck(){
  if (count >= 10){
    if((wifiMulti.run(timeout) == WL_CONNECTED)){
      if(signupOK == false){
        FBase_Setup();
      }
      IoTError = false;
      count = 0;
      Serial.print("Wifi: ");
      digitalWrite(LED, HIGH);
      Serial.print(WiFi.SSID());
      Serial.print(" ");
      Serial.println(WiFi.RSSI());
    }
    else{
      IoTError = true;
      count = 0;
      digitalWrite(LED, LOW);
      Serial.println("NOT CONNECTED!");
    }
  }
  else {
    count++;
  }
}

void Button_Control(){
  int B1_State = digitalRead(Button_1);
  int B2_State = digitalRead(Button_2);
  int B3_State = digitalRead(Button_3);
  int buttons = B1_State+B2_State+B3_State;
  int B1_Val = 1;
  int B2_Val = 1;
  int B3_Val = 1;
  //Serial.print(buttons);
  //Serial.print(B1_State);
  //Serial.print(B2_State);
  //Serial.println(B3_State);
  digitalWrite(E2A_1,B1_State);
  digitalWrite(E2A_2,B2_State);
  digitalWrite(E2A_3,B3_State);
  if(buttons == 1){
    B1_Val = B1_State;
    B2_Val = B2_State;
    B3_Val = B3_State;
    
  }
  else if(buttons > 1){
    Reset_Button();
  }
  digitalWrite(B1_Power,B1_Val);
  digitalWrite(B2_Power,B2_Val);
  digitalWrite(B3_Power,B3_Val);
}

void Reset_Button(){
  digitalWrite(B1_Power,LOW);
  digitalWrite(B2_Power,LOW);
  digitalWrite(B3_Power,LOW);
  delay(500);
}

unsigned long last_read = millis();
int fail_counter = 0;
int overheat_counter = 0;
void Serial_Reader(){
  String Reading = Serial2.readStringUntil('\n');
  
  int str_len = Reading.length()+1;
  if((millis()-last_read)>1650){
    fail_counter +=1;
  }
  else{
    fail_counter =0;
  }
  RXTXError = fail_counter>3;
  last_read = millis();
  String OUTT = "N";
  if(Reading != ""){
    char reading[str_len];
    Reading.toCharArray(reading, str_len);
    int len = str_len;
    if(reading[0] == 'N'){
      int ctr = 1;
      bool valid = false;
      for(int i=ctr; i<len-1; i++){
        ctr+=1;
        if (reading[i] == 'H'){
          valid = true;
          break;
        }
  }
  if (valid){
    Heating = reading[ctr]=='1';
    ctr+=1;
  Warming = reading[ctr]=='1';
  ctr+=1;
  Food_Sensors = reading[ctr]=='1';
  ctr+=1;
  Lid_Sensor = reading[ctr]=='1';
  ctr+=1;
  String cookT = "";
  for(int i=ctr; i<len-1; i++){
        ctr+=1;
        OUTT+=reading[i];
        cookT+=reading[i];
        if (reading[i] == 'T'){
          break;
        }}
        heat_time = cookT.toFloat()/1000;
        String tempT = "";
        for(int i=ctr; i<len-1; i++){
        ctr+=1;
        tempT+=reading[i];
        }
        Temperature = tempT.toFloat();
        Serial.println(heat_time);
        if (Temperature > overheat_temp_threshold){
    overheat_counter +=1;
    
  }
  else{
    overheat_counter = 0;
  }
  overheat = overheat_counter>3;
  String output_print = "";
  
  for(int i = 0;i<str_len-2;i++){
    output_print += (String) reading[i];
  }
    readings = output_print;
    Serial.print("Reading Recieved");
    Serial.println("OUT: "+output_print);
  }
    }
  }  
  if(overheat){
    status_str = "OVERHEAT!";
    status_int = 3;
  }
  else if(RXTXError){
    status_str = "RX-TX Error";
    status_int = 3;
  }
  else if(Temperature == -1000){
    status_str = "Thermometer Error";
    status_int = 3;
  }
  else if(Heating){
    status_str = "Heating";
    status_int = 2;
  }
  else if(Warming){
    status_str = "Warming";
    status_int = 1;
  }
  else{
    status_str = "Idle";
    status_int = 0;
  }
  
}
void Time_Adder(){
  unsigned long current_time = millis();
  unsigned long interval = current_time - last_time;
  last_time = current_time;
  //Serial.print("int: ");
  //Serial.println(interval);
  //Serial.println("4: ");
  for(int i = 0; i < 8; i++){
    Times[i] += interval;
  }
}

void Timer(void fxn(), int Time, int index){
  if(Times[index] > Time){
    fxn();
    Times[index] -= Time;
  }
}

void InternetFxns(){
  WiFiCheck();
  FBase();
}

void loop() {
  InternetFxns();
  Time_Adder();
  //Serial.println("Seat Number:" + SeatNumReader());
  ButtonCombi(digitalRead(Button_1),digitalRead(Button_2),digitalRead(Button_3));
  
  Button_Control();
  Serial_Reader();
  Serial.println("READINGS: "+readings);
  //yield();
  delay(50); 
}
