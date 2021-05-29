class User {
  String username;
  String password;
  String name = "";
  String lastname = "";
  String university = "";
  String program = "";
  DateTime birthdate = DateTime.now();
  int gradYear = 0;
  String gender = "";
  bool verified = false;
  Map<User, int> friendList = {};

  User(this.username, this.password);

  syncData() async {}
}
