class User {
  String username;
  String lastname;
  String firstname;
  String emailadress;
  String password;
  String api_key;
  int id;

  User(this.username, this.lastname, this.firstname, this.emailadress, this.password,
      this.api_key, this.id);

  User.fromJson(Map<String, dynamic> paresedJson) {
    User user = new User(
      paresedJson['username'],
      paresedJson['lastname'],
      paresedJson['firstname'],
      paresedJson['password'],
      paresedJson['emailadress'],
      paresedJson['id'],
      paresedJson['api_key'],
    );
  }
}
