import "package:flutter/material.dart";
import 'package:unibud/add_friend.dart';
import 'package:unibud/logup.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddFriend()));
          },
          child: Icon(Icons.person_add),
          backgroundColor: Colors.purple,
        ),
        appBar: AppBar(
          title: Text("Dashboard"),
          actions: [
            TextButton(
              child: Icon(Icons.bookmarks),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bookmarks()));
              },
              style: TextButton.styleFrom(
                  primary: Colors.white, shadowColor: Colors.white),
            ),
            TextButton(
              child: Icon(Icons.person),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              style: TextButton.styleFrom(
                  primary: Colors.white, shadowColor: Colors.white),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: double.infinity),
            child: Column(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ProfileButton(),
                          ProfileButton(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ProfileButton(),
                          ProfileButton(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              children: [
                TextButton(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 85,
                        child: ClipOval(
                            child: Image.asset(
                          "assets/profile.jpg",
                          fit: BoxFit.fill,
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Container(
                          child: Text(
                            "Name Lastname",
                            style: TextStyle(
                                fontSize: 9, color: Colors.purple[700]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FriendProfilePage()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(20, 30),
                        alignment: Alignment.centerLeft,
                        primary: Colors.purple[700]),
                    onPressed: () {},
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Icon(
                        Icons.person_remove,
                        size: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(20, 30),
                        alignment: Alignment.centerLeft,
                        primary: Colors.purple[700]),
                    onPressed: () {},
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Icon(
                        Icons.call,
                        size: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(20, 30),
                        alignment: Alignment.centerLeft,
                        primary: Colors.purple[700]),
                    onPressed: () {},
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Icon(
                        Icons.chat_bubble,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
            child: Icon(Icons.mode_edit),
            style: TextButton.styleFrom(
                primary: Colors.white, shadowColor: Colors.white),
          )
        ],
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: ClipOval(
                      child: Image.asset(
                    "assets/profile.jpg",
                    fit: BoxFit.fill,
                  )),
                ),
                Column(
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(color: Colors.purple[700], fontSize: 25),
                    ),
                    Text(
                      "Lastname",
                      style: TextStyle(color: Colors.purple[700], fontSize: 25),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "University goes here...",
              style: TextStyle(color: Colors.black87, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Program goes here...",
              style: TextStyle(color: Colors.black87, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Year goes here...",
              style: TextStyle(color: Colors.black87, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Gender goes here...",
              style: TextStyle(color: Colors.black87, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Birthdate goes here...",
              style: TextStyle(color: Colors.black87, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfile extends StatelessWidget {
  Map<String, TextEditingController> controllers = {
    "name": TextEditingController(text: "Name"),
    "lastname": TextEditingController(text: "Lastname"),
    "university": TextEditingController(text: "University goes here..."),
    "program": TextEditingController(text: "Program goes here..."),
    "year": TextEditingController(text: "Year goes here..."),
    "gender": TextEditingController(text: "Gender goes here..."),
    "birthdate": TextEditingController(text: "Birthdate goes here..."),
  };

  setColumnOnDatabase(String column, value) async {
    //? some stuff goes here to add
    //! the stuff above adds a row to our database
    /// ("firstname", "Kiarash") adds Kiarash as a row to firstname
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: double.infinity),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: OutlinedButton(
                        child: ClipOval(
                            child: Image.asset(
                          "assets/profile.jpg",
                          fit: BoxFit.fill,
                        )),
                        onPressed: () {},
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(helperText: "Name"),
                            controller: controllers["name"],
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(helperText: "Lastame"),
                            controller: controllers["lastname"],
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(helperText: "University"),
                    controller: controllers["university"],
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(helperText: "Program"),
                    controller: controllers["program"],
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration:
                        InputDecoration(helperText: "Year of graduation"),
                    controller: controllers["year"],
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(helperText: "Gender"),
                    controller: controllers["gender"],
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(helperText: "Birthdate"),
                    controller: controllers["birthdate"],
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 70.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ValidateDoc()));
                      },
                      child: Text("Submit"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[600],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Bookmarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bookmarks"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: BookmarkTicket(),
        ));
  }
}

class BookmarkTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        color: Colors.purple[50],
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProfileIdentity(),
            SizedBox(
              width: 230,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          primary: Colors.purple[700]),
                      onPressed: () {},
                      child: Icon(
                        Icons.bookmark_remove,
                        size: 30,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          primary: Colors.purple[700]),
                      onPressed: () {},
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          primary: Colors.purple[700]),
                      onPressed: () {},
                      child: Icon(
                        Icons.person_add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FriendProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(Icons.person_remove),
            style: TextButton.styleFrom(
                primary: Colors.white, shadowColor: Colors.white),
          )
        ],
        title: Text("Profile"),
      ),
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ClipOval(
                          child: Image.asset(
                        "assets/profile.jpg",
                        fit: BoxFit.fill,
                      )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.purple[700], fontSize: 25),
                        ),
                        Text(
                          "Lastname",
                          style: TextStyle(
                              color: Colors.purple[700], fontSize: 25),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "University goes here...",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Program goes here...",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Year goes here...",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Gender goes here...",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Birthdate goes here...",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
