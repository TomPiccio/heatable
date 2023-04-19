import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:provider/provider.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:heatable/utils.dart';
import 'package:heatable/widgets/new_economy.dart';
import 'package:heatable/widgets/new_seat.dart';
import 'package:heatable/widgets/headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => SeatNum())],
        child: MyApp()),
  );
}

FirebaseDatabase database = FirebaseDatabase.instance;
DatabaseReference ref = FirebaseDatabase.instance.ref();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heatable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: MyHomePage(title: 'HeaTable Dashboard', SNN: "UND"),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String SNN;
  const MyHomePage({super.key, required this.title, required this.SNN});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 5;
  DatabaseReference _database = FirebaseDatabase.instance.ref("");
  void onEnd() {
    print('onEnd');
    _changeSeat();
  }

  Timer? timer;

  void initTimer() {
    if (timer != null && timer!.isActive) return;

    timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      //job
      setState(() {
        click_again = context.read<SeatNum>().Get_Click();
        SN = context.read<SeatNum>().Get_Seat();
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  String SN = "UND";
  void _changeSeat() {
    setState(() {
      endTime = DateTime.now().millisecondsSinceEpoch + 5000;
      click_again = context.read<SeatNum>().Get_Click();
    });
  }

  Future loadSeat(String SNum) async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );

    await context.read<SeatNum>().Async_Change_Seat(SNum);
    SN = SNum;
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  void _activateListeners() {
    _database.child("clicks").onValue.listen((event) {
      final dynamic val = event.snapshot.value;
      setState(() {
        click_again = val;
      });
    });
    _database.child("SeatAssign").onValue.listen((event) {
      final dynamic val = event.snapshot.value;
      setState(() {
        if (val != "UND") {
          SN = val;
        }
      });
    });
  }

  int click_again = 0;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double scale = 0.7;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double h = MediaQuery.of(context).size.height;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // ipadpro129airbusa330300333dash (1:19)
        width: double.infinity,
        height: h,
        decoration: BoxDecoration(
          color: Color(0xfff7ebda),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupmzt35KW (LnHzweZci8TDp1sBiBMzt3)
              left: 155 * fem,
              top: 195 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(16 * fem, 14 * fem, 26 * fem, 8 * fem),
                width: 1057 * fem,
                height: 90 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff303e55)),
                  color: Color(0xfff7ebda),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupgf3hVe8 (LnJ1CJoretjNEgEcBwgF3H)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5 * fem, 0 * fem),
                      width: 694 * fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // foodiswarmingQm6 (41:641)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  23.2 * fem, 10 * fem, 40 * fem, 15.12 * fem),
                              width: 352 * fem,
                              height: 68 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // makihotspringHZz (39:362)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 3.2 * fem, 0 * fem),
                                    width: 41.6 * fem,
                                    height: 42.88 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/maki-hot-spring.png',
                                      width: 41.6 * fem,
                                      height: 42.88 * fem,
                                    ),
                                  ),
                                  Container(
                                    // foodiswarmingnWk (39:364)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 4.88 * fem),
                                    child: Text(
                                      'Food is warming',
                                      style: SafeGoogleFont(
                                        'Raleway',
                                        fontSize: 32 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.175 * ffem / fem,
                                        color: Color(0xff303e55),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // foodisheatingtZn (41:642)
                            left: 342 * fem,
                            top: 0 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(27.79 * fem,
                                  11.53 * fem, 58 * fem, 12.08 * fem),
                              width: 352 * fem,
                              height: 68 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // gameiconsheathazeyr8 (41:628)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 7.4 * fem, 0 * fem),
                                    width: 32.81 * fem,
                                    height: 44.39 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/game-icons-heat-haze-gW4.png',
                                      width: 32.81 * fem,
                                      height: 44.39 * fem,
                                    ),
                                  ),
                                  Container(
                                    // foodisheating4sa (41:630)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0.55 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Food is heating',
                                      style: SafeGoogleFont(
                                        'Raleway',
                                        fontSize: 32 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.175 * ffem / fem,
                                        color: Color(0xff303e55),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame1mX6 (42:204)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 10 * fem, 43 * fem, 20 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // groupVhz (42:200)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 40 * fem,
                            height: 36 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group.png',
                              width: 40 * fem,
                              height: 36 * fem,
                            ),
                          ),
                          Text(
                            // dangerDP6 (42:199)
                            'Danger',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xffb31a23),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame2YwA (42:212)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 7 * fem, 0 * fem, 13 * fem),
                      padding: EdgeInsets.fromLTRB(
                          6.1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // openmojizzzq9a (42:208)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0.33 * fem, 16.57 * fem, 0 * fem),
                            width: 35.33 * fem,
                            height: 37.67 * fem,
                            child: Image.asset(
                              'assets/page-1/images/openmoji-zzz-M6Q.png',
                              width: 35.33 * fem,
                              height: 37.67 * fem,
                            ),
                          ),
                          Container(
                            // idleL6L (42:205)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 10 * fem),
                            child: Text(
                              'Idle',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 32 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xff303e55),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupq9cxTAx (LnHzhVJYU7sAwqAimgQ9cX)
              left: 77 * fem,
              top: 62 * fem,
              child: Container(
                width: 789 * fem,
                height: 85 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // materialsymbolsarrowbackrounde (1:20)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 396 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => HOME()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 70 * fem,
                          height: 70 * fem,
                          child: Image.asset(
                            'assets/page-1/images/material-symbols-arrow-back-rounded-3v8.png',
                            width: 70 * fem,
                            height: 70 * fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // dashboardFcc (55:585)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 9 * fem),
                      child: Text(
                        'Dashboard',
                        textAlign: TextAlign.right,
                        style: SafeGoogleFont(
                          'Raleway',
                          fontSize: 64 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.175 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupamejXc4 (LnJ1fsrFanNKdL86m3aMEj)
              left: 82 * fem,
              top: 300 * fem,
              child: Container(
                width: 1201 * fem,
                child: Column(children: [
                  Divider(),
                  Headers(),
                  Divider(),
                ]),
              ),
            ),
            Positioned(
              left: 82 * fem,
              top: 300 * fem + 50,

              /// <-- fixed here
              right: 82 * fem,
              bottom: 50 * fem,

              /// <-- fixed here
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  //physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return NewEconomy(row_num: index + 1);
                  },
                ),
              ),
            ),
            Positioned(
              // legendoMr (50:232)
              left: 165 * fem,
              top: 147 * fem,
              child: Align(
                child: SizedBox(
                  width: 115 * fem,
                  height: 38 * fem,
                  child: Text(
                    'Legend',
                    textAlign: TextAlign.right,
                    style: SafeGoogleFont(
                      'Raleway',
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.175 * ffem / fem,
                      color: Color(0xff303e55),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HOME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = 0.5 * MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    double logo_Scale = 2.5;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // ipadpro129homepageooN (1:5)
          padding:
              EdgeInsets.fromLTRB(388 * fem, 178 * fem, 388 * fem, 174 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff7ebda),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  // makihotspringHZz (39:362)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 50 * fem, 3.2 * fem, 50 * fem),
                  width: 435.48 * fem * logo_Scale,
                  height: 324.07 * fem * logo_Scale,
                  child: Image.asset(
                    'assets/HeaTable_Logo.png',
                    width: 435.48 * fem * logo_Scale,
                    height: 324.07 * fem * logo_Scale,
                  ),
                ),
              ),
              Container(
                // frame3dx4 (50:278)
                margin:
                    EdgeInsets.fromLTRB(178 * fem, 0 * fem, 179 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 300,
                    height: 200 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xfff7ebda),
                      border: Border.all(color: Color(0xff303e55)),
                      borderRadius: BorderRadius.circular(20 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(10 * fem, 10 * fem),
                          blurRadius: 6 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'BEGIN',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 90 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.175 * ffem / fem,
                          color: Color(0xff303e55),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
