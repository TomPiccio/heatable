import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:heatable/widgets/statusbar.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:heatable/providers/seatnum.dart';
import 'package:provider/provider.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:heatable/widgets/statusbar.dart';
import 'package:heatable/widgets/seat.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'RaleWay',
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'HeaTable Dashboard', SNN: "UND"),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Divider(),
            Center(
              child: Image(
                image: AssetImage('assets/banner.png'),
              ),
            ),
            Divider(),
            Headers(),
            Divider(),
            Expanded(
                child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return NewEconomy(row_num: index + 1);
              },
            )),
            Container(
              height: 130,
              child: context.watch<SeatNum>().seatnum == "UND"
                  ? Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "None Selected",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    )
                  : context.watch<SeatNum>().seatnum == "NOC"
                      ? Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "No Connection",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.grey[900],
                              ),
                            ),
                          ),
                        )
                      : click_again < 1
                          ? Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Click Again!",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.grey[900],
                                  ),
                                ),
                              ),
                            )
                          : StatusBar(seatnum: SN),
            ),
          ],
        ),
      ),
    );
  }
}
