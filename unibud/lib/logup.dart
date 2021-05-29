import 'dart:io';

import "package:flutter/material.dart";
import 'package:unibud/account.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 70,
          ),
          SizedBox(
            width: 200,
            child: TextField(
              decoration: InputDecoration(hintText: "Username"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            child: TextField(
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                  (Route<dynamic> route) => false);
            },
            child: Text("Log In"),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple[600],
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 70,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Name..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Lastname..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Email..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Phone number..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Username..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Password..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Age..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "University..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Program of study..."),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(hintText: "Gender..."),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ValidateDoc()));
                },
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[600],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ValidateDoc extends StatelessWidget {
  String imageLocation = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verification Document")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text:
                    "To assure your and our users' safety, we are required to ask you for submitting a proof of enrollment / acceptance before you can proceed with creating your account.",
                style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Upload Image"),
              style: OutlinedButton.styleFrom(
                primary: Colors.purple[600],
              ),
            ),
            SizedBox(
                height: 370,
                child: imageLocation.compareTo("") == 0
                    ? null
                    : Image.file(File(imageLocation))),
            Container(
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
