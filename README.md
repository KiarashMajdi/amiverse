# amiverse

This is my second native application with flutter and I got it up to here in nearly 2 days. 
The user interface is not the best ever, and I was trying to familiarize myself with page-changing and layout.

As of now, I am experienced with making applications with multiple pages and routes.

To begin, I knew that I wanted to show a banner for a few seconds before the Welcome page appears.

```dart
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
```

Afterwards, a Welcome page will appear that gives the options of login and signup.

```dart
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
```
Where both of these pages (login and signup) consist of TextFields that are not connected to an API, backend functionality or database yet.

After signing up, you need to upload a verification document to prove your university enrollment or acceptance, and this step is mainly made for purpose of the security of the users. Processing the documents will be done manually.

After logging in, the user will be redirected to their dashboard where they can directly call or chat with any of their friends who are listed in format of widgets called ProfileButton.

```dart
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
```

There is also a page for adding friends that gives the ability to read information provided by random users and add them as friends or bookmark them to decide later. There is a bookmarks page where you access your bookmarks and also a page that you can view and edit information of your own profile. Editing profile information requires a verification document and will be manually checked and updated.

This application is only a front-end skeleton and is not connected to backend, API or database.
