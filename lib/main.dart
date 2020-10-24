import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
      MaterialApp(
        home: SafeArea(
          child: Scaffold(
            // backgroundColor: Colors.cyan,
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
        image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Shop from your\nLocal shops',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          ButtonTheme(
            height: 60.0,
            child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  color: Colors.transparent,
                  child: Text(
                    'Customer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {},
                ),
          ),
          SizedBox(
            height: 30.0,
          ),
          ButtonTheme(
            height: 60.0,
            child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  color: Colors.transparent,
                  child: Text(
                    'Seller',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
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
