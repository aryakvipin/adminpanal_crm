
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../controllers/user.dart';
import '../main/main_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => User())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var txtUserNameController = TextEditingController();
  var txtUserPwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Provider Login"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: txtUserNameController,
                  decoration: const InputDecoration(hintText: "Enter username"),
                ),
                TextField(
                  controller: txtUserPwdController,
                  decoration: const InputDecoration(hintText: "Enter password"),
                ),
                TextButton(
                    onPressed: () {
                      Provider.of<User>(context, listen: false).signIn(
                          txtUserNameController.text.toString(),
                          txtUserPwdController.text.toString());
                      Get.to(() => MainScreen());
                    },
                    child: const Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}