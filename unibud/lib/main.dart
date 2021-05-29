import 'dart:async';

import "package:flutter/material.dart";
import 'package:unibud/logup.dart';

void main() {
  runApp(Amiverse());
}

class Amiverse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple),
      home: Scaffold(
        body: LogoPage(),
      ),
    );
  }
}

class LogoPage extends StatefulWidget {
  @override
  _LogoPageState createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async {
    const duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "assets/image0.png",
        fit: BoxFit.fitHeight,
      ),
      height: double.infinity,
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 36,
                          color: Colors.purple[700]),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 300,
                    child: RichText(
                      text: TextSpan(
                        text:
                            "Welcome to Amiverse! You are now entering a community of university students where you can make friends in your own university!",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 18,
                            color: Colors.black87),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Container(
                  child:
                      Image.asset("assets/first_page.jpg", fit: BoxFit.contain),
                  height: double.infinity,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.purple[600]),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        child: Text("Sign up"),
                      )),
                  OutlinedButton(
                      style:
                          OutlinedButton.styleFrom(primary: Colors.purple[600]),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        child: Text("Log in"),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
