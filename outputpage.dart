import 'package:flutter/material.dart';

import 'inputpage.dart';

// ignore: must_be_immutable
class Outputpage extends StatefulWidget {
  Outputpage({
    this.result,
  });

  String result;

  @override
  _OutputpageState createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10446e),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 100,
              ),

              Text(widget.result.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),

              SizedBox(
                height: 30,
              ),

              Text(widget.result.length.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),

              SizedBox(
                height: 40,
              ),

              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Inputpage()));
                  },
                  color: Colors.pinkAccent,
                  splashColor: Colors.green,
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
