import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm/view_model/user_view_model.dart';
import '../../model/user_model.dart';
import '../../utils/routes/routes_name.dart';

class SplashServices {
  void checkAuthentication(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    Future<UserModel> getUserData() => UserViewModel().getUser();
    getUserData().then((value) {
      if (value.token == 'null' || value.token == '') {
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.login, (route) => false);
      } else {
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.home, (route) => false);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
