
import 'package:rxdart/subjects.dart';
import 'package:todoapp/bloc/resources/respository.dart';
import 'package:todoapp/models/classes/user.dart';

class UserBloc {
  final _respository = Repository();
  final _userGetter = PublishSubject<User>();
  Stream<User> get  getUser => _userGetter.stream;

  registerUser(String username, String firstname, String lastname,
      String password, String emailadress) async {
    User user = await _respository.registerUser(
        username, firstname, lastname, password, emailadress);
    _userGetter.sink.add(user);
  }

  dispose() {
    _userGetter.close();
  }
}

final bloc = UserBloc();
