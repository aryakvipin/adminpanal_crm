import 'dart:io';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:images_picker/images_picker.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../pages/employee_screen.dart';


class MyAddEmployee extends StatefulWidget {
  // const MyeditEmployee({
  //   Key? key,
  // }) : super(key: key);

  @override
  State<MyAddEmployee> createState() => _MyAddEmployeeState();
}

class _MyAddEmployeeState extends State<MyAddEmployee> {

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
              "Add Employee",
              style: TextStyle(color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Padding(padding: EdgeInsets.only(top: 30)),
                Center(
                    child: Stack
                      (
                      children: [
                        Column(
                          children: [
                            path != null
                                ? Container(
                              child: Image.file(
                                File(path!
                                ),
                                fit: BoxFit.cover,
                              ),

                              height: 200,

                            )
                                :   Image.asset("assets/images/female.png",
                              width: 170,
                              height: 170,
                              fit: BoxFit.cover,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child:ElevatedButton(
                                child: Text(' profile picture'),
                                onPressed: () async {
                                  List<Media>? res = await ImagesPicker.pick(
                                    count: 3,
                                    pickType: PickType.all,
                                    language: Language.System,
                                    maxTime: 30,
                                    // maxSize: 500,
                                    cropOpt: CropOption(
                                      // aspectRatio: CropAspectRatio.wh16x9,
                                      cropType: CropType.circle,
                                    ),
                                  );
                                  print(res);
                                  if (res != null) {
                                    print(res.map((e) => e.path).toList());
                                    setState(() {
                                      path = res[0].thumbPath;
                                    });
                                    // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
                                    // print(status);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 30,),
                      ],
                    )),

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
                            label: Text("Employee Name ",style: TextStyle(color: Colors.white),),
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
                        padding: EdgeInsets.only(top: 30),
                        child:TextField
                          (style: TextStyle(color: Colors.white),
                          controller: dateInput,
                          //editing controller of this TextField
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: BoxDecorationColor, width: 2.0),
                            ),
                            //icon: Icon(Icons.calendar_today), //icon of text field
                            labelText: "Enter Date" ,labelStyle:TextStyle(color: Colors.white), //label text of field

                          ),

                          readOnly: true,
                          //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2100));

                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              setState(() {
                                dateInput.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {}
                          },
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
                            label: Text("Password   ",style: TextStyle(color: Colors.white),),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: Colors.white),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),


                          ),
                          validator:(value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
// Return null if the entered password is valid
                            return null;
                          },
                      //    controller: myController,
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
                            label: Text("Experince   ",style: TextStyle(color: Colors.white),),
                            hintText: "Enter Experince ",
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
                      //    controller: myController,
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
                            label: Text("Job Title ",style: TextStyle(color: Colors.white),),
                            hintText: "Enter Job",
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
                         // controller: myController,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child:InputDecorator(
                          decoration: InputDecoration(

                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),

                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: BoxDecorationColor, width: 2.0),
                              ),

                              // errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                          // isEmpty: _currentSelectedValue == '',

                          child:DropdownButton<String>(
                            value: PositionValue,
                            underline: Container(),

                            dropdownColor:Colors.grey,
                            style: TextStyle(color: Colors.black),
                            hint: Text(Position!,style: TextStyle(color:Colors.white),),

                            onChanged: (newValue) {
                              setState(
                                    () {
                                      PositionValue = newValue;
                                  Position = newValue;
                                },
                              );
                            },
                            items: <String>['First item', 'Second item', 'Third item']
                                .map<DropdownMenuItem<String>>(
                                  (value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  key: ValueKey('$value'),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,right: 140),
                                    child: Text(
                                        value,style: TextStyle(color:Colors.white)
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),

                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child:InputDecorator(
                          decoration: InputDecoration(

                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),

                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: BoxDecorationColor, width: 2.0),
                              ),

                              // errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                          // isEmpty: _currentSelectedValue == '',

                          child:DropdownButton<String>(
                            value: StaffTypeValues,
                            underline: Container(),

                            dropdownColor:Colors.grey,
                            style: TextStyle(color: Colors.black),
                            hint: Text(Position!,style: TextStyle(color:Colors.white),),

                            onChanged: (newValue) {
                              setState(
                                    () {
                                      StaffTypeValues = newValue;
                                  StaffType = newValue;
                                },
                              );
                            },
                            items: <String>['First item', 'Second item', 'Third item']
                                .map<DropdownMenuItem<String>>(
                                  (value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  key: ValueKey('$value'),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,right: 140),
                                    child: Text(
                                        value,style: TextStyle(color:Colors.white)
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),

                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child:InputDecorator(
                          decoration: InputDecoration(

                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),

                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: BoxDecorationColor, width: 2.0),
                              ),

                              // errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                          // isEmpty: _currentSelectedValue == '',

                          child:DropdownButton<String>(
                            value: SexValues,
                            underline: Container(),

                            dropdownColor:Colors.grey,
                            style: TextStyle(color: Colors.black),
                            hint: Text(Sex!,style: TextStyle(color:Colors.white),),

                            onChanged: (newValue) {
                              setState(
                                    () {
                                      SexValues = newValue;
                                      Sex = newValue;
                                },
                              );
                            },
                            items: <String>['Male', 'Female']
                                .map<DropdownMenuItem<String>>(
                                  (value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  key: ValueKey('$value'),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20,right: 140),
                                    child: Text(
                                        value,style: TextStyle(color:Colors.white)
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),

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
  Future<File> downloadFile(String url) async {
    Dio simple = Dio();
    String savePath = Directory.systemTemp.path + '/' + url.split('/').last;
    await simple.download(url, savePath,
        options: Options(responseType: ResponseType.bytes));
    print(savePath);
    File file = new File(savePath);
    return file;
  }
}
