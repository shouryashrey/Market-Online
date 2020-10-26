import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'userLogin.dart';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey,
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
                'Shop from your\nLocal shops',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          ButtonTheme(
            height: 60.0,
            minWidth: 300.0,
            child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    side: BorderSide(color: Colors.yellow, width: 3.0),
                  ),
                  color: Colors.yellow,
                  child: Text(
                    'Customer',
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
          SizedBox(
            height: 30.0,
          ),
          ButtonTheme(
            height: 60.0,
            minWidth: 300.0,
            child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    side: BorderSide(color: Colors.yellow, width: 3.0),
                  ),
                  color: Colors.transparent,
                  child: Text(
                    'Seller',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                    ),
                  ),
                  onPressed: () {},
                ),
          ),
        ],
      ),
    );
  }
}