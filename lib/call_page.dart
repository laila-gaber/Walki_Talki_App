import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  String name="Laila";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar:  AppBar(
        title:  Text(
            "Walki Talki",
          style: TextStyle(
            fontSize: 30
          ),

        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30,),
             Text(
              '$name is talking...',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 40,
                 color: Colors.white
               ),
            ),
           // SizedBox(height: 100,),
            Expanded(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                child: Icon(
                  size: 100,
                  Icons.mic,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
