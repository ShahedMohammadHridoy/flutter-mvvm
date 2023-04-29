import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userPreference = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
              onTap: () {
                userPreference.removeUser().then((value) {
                  Navigator.pushNamed(context, RoutesName.login);
                }).onError((error, stackTrace) {
                  if (kDebugMode) {
                    print(error.toString());
                  }
                });
              },
              child: const Center(child: Text('Logout'))),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
