import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  @override
  State<CallPage> createState() => _CallPageState();

}

class _CallPageState extends State<CallPage> {
  String ?name;
  bool ?talking=false;
  Widget? talkiicon;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    talking=true;
    name="laila";
    talkiicon=Icon(
      size: 100,
      Icons.mic,
      color: Colors.green,
    );
  }

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
              child: GestureDetector(
                 onTap: ()
                {
                  setState(() {
                    if(name=="laila")
                      {
                        name="Ahmed";
                      }
                    else
                      {
                        name="laila";
                      }
                    if(talking!)
                      {
                        print(talking);
                        talking=false;
                        talkiicon=Icon(
                          size: 100,
                          Icons.mic,
                          color: Colors.green,
                        );

                      }
                    else
                      {
                        talking=true;
                        talkiicon=Icon(
                          size: 100,
                          Icons.headphones,
                          color: Colors.red[900],
                        );

                      }
                    print(name);
                  });
                },
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.white,
                  child: talkiicon
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
