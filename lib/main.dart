import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'consumer/userLogin.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            backgroundColor: HexColor("#b2ebf2"),
            body: marketOnline(),
          ),
        ),
      ),
    );

class marketOnline extends StatefulWidget {
  @override
  _marketOnlineState createState() => _marketOnlineState();
}

class _marketOnlineState extends State<marketOnline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage("images/bk2.jpg"),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 60.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ARZI\nThapar Institute\nEngineering & Technology',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: HexColor("#ff5722"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonTheme(
                height: 60.0,
                minWidth: 200.0,
                child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        side: BorderSide(color: HexColor("#00bcd4"), width: 3.0),
                      ),
                      color: HexColor("#00bcd4"),
                      child: Text(
                        'Student',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => userLogin()),
                        );
                      },
                    ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 30.0,
          // ),

        ],
      ),
    );
  }
}