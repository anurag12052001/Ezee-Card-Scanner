import 'package:ezee_cardscanner/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "Ezee Card Sanner",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize: 40),
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  "assets/cardlottie.gif",

                  // height: 550,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/camera.png",
                    height: 60,
                    width: 70,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Scan and read business cards \n           with high accuracy",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  SizedBox(height: 50),
                  Material(
                    borderRadius: BorderRadius.circular(30),
                    elevation: 50,
                    borderOnForeground: true,
                    color: Colors.amber,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.w900),
                      ),
                      minWidth: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
