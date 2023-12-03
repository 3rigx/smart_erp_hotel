import 'package:flutter/foundation.dart';

import '../model/user_model.dart';

class Service extends ChangeNotifier {
  UsersModel? _usermodel;

  UsersModel? get loggedInUser => _usermodel;

  // Stream<UsersModel?> streamUserData(String uid) {
  //   return UserDataStream().streamUserData(uid);
}
