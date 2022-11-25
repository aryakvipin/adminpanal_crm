//
// import 'package:admin/screens/main/main_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
//
// import 'package:provider/provider.dart';
//
// import '../../common/app_colors.dart';
// import '../../constants.dart';
// import '../../constants.dart';
// import '../../controllers/user.dart';
// import '../../employeeLogin/Employee_Dashboard.dart';
//
//
// class MyLogin extends StatefulWidget {
//   MyLogin({Key? key}) : super(key: key);
//
//   @override
//   State<MyLogin> createState() => _MyLoginState();
// }
//
// class _MyLoginState extends State<MyLogin> {
//   var txtUserNameController = TextEditingController();
//
//   var txtUserPwdController = TextEditingController();
//
//   String ? admin;
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: bgColor,
//         // appBar: AppBar(
//         //   title: const Text("Provider Login"),
//         // ),
//         body: Center(
//           child:Padding(
//             padding: const EdgeInsets.all(20),
//             child: Form(
//               child:  Stack(
//                 children: <Widget>[
//                   SingleChildScrollView(
//                     child: Container(
//                       height: 400,
//                       width: 400,
//
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 25,
//                         vertical: 25,
//                       ),
//                       decoration: BoxDecoration(
//                         color:secondaryColor.withOpacity(1.0),
//                         borderRadius: BorderRadius.circular(20),
//                         shape: BoxShape.rectangle,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//
//                           Padding(
//                             padding: const EdgeInsets.only(left: 10,right: 10),
//                             child: Image.asset("assets/images/Crm_logo.png",height:60,width: 100,),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 10,right: 10),
//                             child: Center(
//                                 child: Text("Login",
//                                     style: TextStyle(fontSize: 30, color: Colors.orangeAccent)
//                                 )),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
//                             child: TextField(
//                               autocorrect: false,
//                               autofocus: false,
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                               decoration: InputDecoration(
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.white, width: 2.0),
//                                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.all(Radius.circular(2.0),
//
//
//                                     ),
//
//                                     borderSide: BorderSide(
//                                       width: 1,
//                                       color: Colors.white,
//                                     )),
//                                 focusedErrorBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(Radius.circular(2.0)),
//                                   borderSide: BorderSide(
//                                     width: 1,
//                                     color: Colors.blue,
//                                   ),
//                                 ),
//                                 counterStyle: TextStyle(color: Colors.cyan),
//                                 label: Text("Username   ",style: TextStyle(color: Colors.white),),
//                                 hintText: "Enter username",
//                                 hintStyle: TextStyle(color: Colors.white),
//
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 ),
//
//
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(left: 10,right: 10,top: 25,bottom: 25),
//                             child: TextField(
//                               autocorrect: false,
//                               autofocus: false,
//                               obscureText: false,
//                               style: TextStyle(
//                                 fontSize: 18,
//                               ),
//                               decoration: InputDecoration(
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.blue, width: 2.0),
//                                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.white, width: 2.0),
//                                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 ),
//                                 errorBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.all(Radius.circular(2.0),
//
//
//                                     ),
//
//                                     borderSide: BorderSide(
//                                       width: 1,
//                                       color: Colors.white,
//                                     )),
//                                 focusedErrorBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(Radius.circular(2.0)),
//                                   borderSide: BorderSide(
//                                     width: 1,
//                                     color: Colors.blue,
//                                   ),
//                                 ),
//                                 counterStyle: TextStyle(color: Colors.cyan),
//                                 label: Text("Password   ",style: TextStyle(color: Colors.white),),
//                                 hintText: "Enter Password",
//                                 hintStyle: TextStyle(color: Colors.white),
//
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.all(Radius.circular(30)),
//                                 ),
//
//
//                               ),
//                             ),
//                           ),
//
//                           ElevatedButton( style: ElevatedButton.styleFrom(
//                             primary: Colors.white,
//                             onPrimary: Colors.white,
//                             shadowColor: Colors.white,
//                             elevation: 3,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(32.0)),
//                             minimumSize: Size(100, 40), //////// HERE
//                           ),
//                             onPressed: (){
//
//                               Provider.of<User>(context, listen: false).signIn(
//                                   txtUserNameController.text.toString(),
//                                   txtUserPwdController.text.toString());
//                               Get.to(() => Employee_Dashoard());
//
//                             },
//
//                             child: Text(
//                               'Login',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
