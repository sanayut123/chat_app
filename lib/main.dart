import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _userName;

  @override
  Widget imageChat = Image.asset(
                        'assets/chat.png',
                        height:300,
                      );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey[50],
      child: Wrap(
        children: [
          Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 100.0,
            ),
            imageChat,
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _userName,
                decoration: InputDecoration(
                  labelText: "Your Name",
                  hintText: "Nick Name",
                  fillColor: Colors.red,
                  hoverColor: Colors.red,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text(
                "Join Chat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0
                ),
              ),
              color: Colors.blue[100],
              onPressed: (){

              }
            ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}