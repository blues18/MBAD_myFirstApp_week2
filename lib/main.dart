import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  String appName = "My first App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appName),  //ctrl space to get the list of space
        ),
        body:Container(
          padding: EdgeInsets.all(50),
          child: Column(
          children:[
            Text('Welcome to $appName!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),),
            SizedBox(height: 20),
            Image.asset('images/read_newspaper.png'),
            SizedBox(height: 20),
            Text('Are you a ...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: Text('Student',style: TextStyle(fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand")),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),minimumSize: Size(120, 40)),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text('Staff',style: TextStyle(fontWeight: FontWeight.bold,
                      fontFamily: "Quicksand")),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),minimumSize: Size(120, 40)),
                    )
                  ],
                ),
          ],
        ), //we are importing this from lib/widgets/text_widget.dart
        )
    );
  }
}
