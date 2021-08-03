import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:Container(
          child: Center(
                  child: AnalogClock(
                    width: 250,
                    isLive: true,
                    showAllNumbers: true,
                    numberColor: Theme.of(context).primaryColor,
                    secondHandColor: Theme.of(context).primaryColor,
                    hourHandColor: Colors.white,
                    minuteHandColor: Colors.white,
                    digitalClockColor: Colors.grey,
                    showDigitalClock: false,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2.0, color: Theme.of(context).primaryColor,),
                        color: Colors.transparent,
                        shape: BoxShape.circle
                    ),
                  ),
              ),
        ),
    );
  }
}
