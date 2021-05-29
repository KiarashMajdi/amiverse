import "package:flutter/material.dart";

class AddFriend extends StatefulWidget {
  @override
  _AddFriendState createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add a friend")),
        body: Container(
          alignment: Alignment.center,
          child: ProfileTicket(),
        ));
  }
}

class ProfileIdentity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.purple))),
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
                        style:
                            TextStyle(color: Colors.purple[700], fontSize: 20),
                      ),
                      Text(
                        "Lastname",
                        style:
                            TextStyle(color: Colors.purple[700], fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 250,
                child: Text(
                  "Bio: In veritatis voluptatem magnam velit quos ea nostrum. Sint quam eos non ut voluptate quia laboriosam vitae soluta. Aut sint quasi saepe accusamus sequi corrupti doloremque voluptatem. Doloremque placeat aut saepe vel modi molestiae ut in. Repudiandae corrupti est nesciunt id.",
                  style: TextStyle(color: Colors.black87, fontSize: 14),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "University goes here...",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Program goes here...",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Year goes here...",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Gender goes here...",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileTicket extends StatelessWidget {
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
                        Icons.bookmark_add,
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
