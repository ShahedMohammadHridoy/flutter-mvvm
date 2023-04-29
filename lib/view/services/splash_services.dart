import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm/view_model/user_view_model.dart';
import '../../model/user_model.dart';
import '../../utils/routes/routes_name.dart';

class SplashServices {
  void checkAuthentication(BuildContext context) async {
    Future<UserModel> getUserData() => UserViewModel().getUser();
    getUserData().then((value) {
      if (value.token == null || value.token == '') {
        Navigator.pushNamed(context, RoutesName.login);
      } else {
        Navigator.pushNamed(context, RoutesName.home);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
