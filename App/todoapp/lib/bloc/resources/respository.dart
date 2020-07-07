import 'dart:async';
import 'package:http/http.dart' show Client;
import 'package:todoapp/bloc/resources/api.dart';
import 'dart:convert';

import 'package:todoapp/models/classes/user.dart';

class Repository {
  ApiProvider registryProvier = ApiProvider();
  final _apiKey = 'your_api_user';
  Future<User> registerUser(String username, String firstname, String lastname, String password , String emailadress ) 
  {
    return registryProvier.registerUser(
      username, firstname, lastname, password, emailadress);
  }
}
