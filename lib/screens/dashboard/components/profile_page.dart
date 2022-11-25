import 'dart:io';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:images_picker/images_picker.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../pages/employee_screen.dart';


class ProfileDetail extends StatefulWidget {
  const ProfileDetail({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {

  static  final _formKey = GlobalKey<FormState>();
  TextEditingController dateInput = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emialController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();

  void Refresh(){
    setState(() {

    });
  }
  String? path;
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }
  String? Position  = 'Position ';
  String? PositionValue;
  String? StaffType = 'StaffType';
  String? StaffTypeValues;
  String? Sex  = 'StaffType';
  String? SexValues;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10),),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile Details",
              style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Update Your Profile Details",
                style: TextStyle(color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Padding(padding: EdgeInsets.only(top: 20)),


                Center(
                  child: Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child:TextFormField(style: TextStyle(color:Colors.white),
                          // controller: txtUserPwdController,
                          // obscuringCharacter: '*',

                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2.0)),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.blue,
                              ),
                            ),
                            counterStyle: TextStyle(color: Colors.cyan),
                            label: Text("Name ",style: TextStyle(color: Colors.white),),
                            hintText: "Enter Name",
                            hintStyle: TextStyle(color: Colors.white),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),


                          ),
                          validator:  (text) {
                            // add your custom validation here.
                            if (text!.isEmpty) {
                              return 'This field is required';
                            }
                            if (text.length < 3) {
                              return 'Must be more than 2 charater';
                            }
                            return null;
                          },
                          controller: userNameController,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child:TextFormField(style: TextStyle(color:Colors.white),
                          // controller: txtUserPwdController,
                          // obscuringCharacter: '*',

                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2.0)),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.blue,
                              ),
                            ),
                            counterStyle: TextStyle(color: Colors.cyan),
                            label: Text("Email ",style: TextStyle(color: Colors.white),),
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.white),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),


                          ),
                          validator: (value) {
                            // Check if this field is empty
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }

                            // using regular expression
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Please enter a valid email address";
                            }

                            // the email is valid
                            return null;
                          },
                          controller: myController,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child:TextFormField(style: TextStyle(color:Colors.white),
                          // controller: txtUserPwdController,
                          // obscuringCharacter: '*',

                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.white,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2.0)),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.blue,
                              ),
                            ),
                            counterStyle: TextStyle(color: Colors.cyan),
                            label: Text("Mobile",style: TextStyle(color: Colors.white),),
                            hintText: "Enter Mobile",
                            hintStyle: TextStyle(color: Colors.white),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),


                          ),
                          validator: (text) {
                            String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                            RegExp regExp = new RegExp(pattern);

                            if (text?.length == 0) {
                              return 'This field is required';
                            } else if (!regExp.hasMatch(text!)) {
                              return 'Please enter valid mobile number';
                            }

                            return null;
                          },
                          // controller: userNameController,
                        ),
                      ),







                      Padding(
                        padding: const EdgeInsets.only(top :20),
                        child: SizedBox(width: 200,height: 50,
                          // child: ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //   backgroundColor: Colors.white,),
                          //   onPressed: (){
                          //     Navigator.of(context).pushNamed('homepage');
                          //   }, child: const Text("Submit",
                          //   style: TextStyle(fontSize: 25,color:Colors.black
                          //   ),),
                          // ),
                          child:   ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                              child: Text('Submit',style: TextStyle(fontSize: 25,color:Colors.black)),
                              onPressed: () {
                                Refresh();
                                final isValid = _formKey.currentState!.validate();

                                if (isValid) {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => EmplyeeScreen()));
                                } else {
                                  // Fluttertoast.showToast(
                                  //     msg: "Username / Password is Incorrect",
                                  //     gravity: ToastGravity.BOTTOM,
                                  //     fontSize: 16.0);
                                }
                              }
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),

            // SizedBox(height: defaultPadding),
            // Chart(),

          ],
        ),
      ),
    );
  }

}
