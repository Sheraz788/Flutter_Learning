import 'package:flutter/material.dart';
import 'package:flutter_app/secondscreen.dart';

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        title: Text("ID CARD"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.indigo[400],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text("Title 1"),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("Title 2"),
              onTap: (){

              },
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile.jpg"),
                radius: 50,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.white,
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text("Load Next Page"),
            ),
            SizedBox(height: 10),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Sheraz Ali',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Location',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Islamabad',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  'sherazalibk@gmail.com',
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              '$level',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}
