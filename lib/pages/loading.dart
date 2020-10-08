import 'package:flutter/material.dart';
import 'package:flutter_app/services/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = "loading";
  void setupWorldTime() async{

    WorldTime worldTime = WorldTime(location: 'London', flag: "germany.png", url: 'Europe/London');
    await worldTime.getTime();
   
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : worldTime.location,
      'flag' : worldTime.flag,
      'time' : worldTime.time,
      'isDayTime' : worldTime.isDayTime
    });
  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SpinKitCircle(
          color: Colors.blue,
          size: 100.0,
        ),
      ),
    );
  }
}
