import 'package:flutter/material.dart';
import 'package:flutter_app/services/WorldTime.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: "uk.png", url: 'Europe/London'),
    WorldTime(location: 'Athens', flag: "greece.png", url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', flag: "egypt.png", url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: "kenya.png", url: 'Africa/Nairobi'),
    WorldTime(location: 'Chicago', flag: "usa.png", url: 'America/Chicago'),
    WorldTime(location: 'New York', flag: "usa.png", url: 'America/New_York'),
    WorldTime(location: 'Seoul', flag: "south_korea.png", url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', flag: "indonesia.png", url: 'Asia/Jakarta'),
  ];


  void updateTime(index) async{
    WorldTime worldTime = locations[index];
    await worldTime.getTime();

    //navigate to home screen
    Navigator.pop(context, {
      'location' : worldTime.location,
      'flag' : worldTime.flag,
      'time' : worldTime.time,
      'isDayTime' : worldTime.isDayTime
    });

  }


  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigoAccent,
      ),

      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Card(
                  child: ListTile(
                    onTap: (){
                      updateTime(index);
                    },
                    title: Text(locations[index].location),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/${locations[index].flag}'),
                    ),
                  ),
              ),
            );
          }
      ),
    );
  }
}
