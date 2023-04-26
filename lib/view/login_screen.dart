import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/utils/utils.dart';
import 'package:mvvm/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        onTap: () {
          // Navigator.pushNamed(context, RoutesName.home);
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => const HomeScreen()));
          Utils.toastMessage("Clicked");
        },
        child: const Text('Click me'),
      ),
    ));
  }
}
