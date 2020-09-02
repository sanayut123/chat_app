import 'package:flutter/material.dart';



class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
   List _listMessage = <Widget>[
    Container(color: Colors.red[50], height: 100.0,),
    Container(color: Colors.red[100], height: 100.0,),
    Container(color: Colors.red[200], height: 100.0,),
    Container(color: Colors.red[300], height: 100.0,),
    Container(color: Colors.blue[50], height: 100.0,),
    Container(color: Colors.blue[100], height: 100.0,),
    Container(color: Colors.red[200], height: 100.0,),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat room",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown[200],
      ),
      body: SafeArea(        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20.0),
                color: Colors.deepOrange[200],
                child: ListView(
                  children: [
                  ],
                  )
              )
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 90.0,
              child: Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 330.0,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                        )
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    height: 50.0,
                    width: 30.0,
                    child: Icon(
                      Icons.send,
                      size: 50.0,
                      color: Colors.blue,
                      ),
                  )
                ],
              )
            )
          ],
        )
      ),      
    );
  }
}