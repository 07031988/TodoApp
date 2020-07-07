import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';

import 'package:todoapp/models/classes/user.dart';

class ApiProvider {
  Client client = Client();
  final _apiKey = 'your_api_user';
  Future<User> registerUser(String username , String firstname , String lastname, String password , String emailadress) async {
    final response = await client.post('http://localhost:5000/api/Register', 

    body:{

        "emailadress":emailadress,
        "username":username,
        "lastname":lastname,
        "firstname":firstname,
        "password":password

    });
    print(response.body.toString);
    if (response.statusCode == 200) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
