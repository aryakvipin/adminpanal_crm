import 'dart:io';

import 'package:dio/dio.dart';


import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../../pages/employee_screen.dart';


class MyUpladData extends StatefulWidget {
  const MyUpladData({
    Key? key,
  }) : super(key: key);

  @override
  State<MyUpladData> createState() => MyUpladDataState();
}

class MyUpladDataState extends State<MyUpladData> {

  static  final _formKey = GlobalKey<FormState>();
  TextEditingController dateInput = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emialController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();

  // final prodectlist=["arya","anu","raj","gami"];
  // String?_selectedval="Em[loyee";
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
  String? text = 'Employee';
  String? textValue;
  final myController = TextEditingController();
  FilePickerResult? result;
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
              "Upload Data",
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
                  child: Column(
                    children: [
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
                            value: textValue,
                            underline: Container(),

                            dropdownColor:Colors.grey,
                            style: TextStyle(color: Colors.black),
                            hint: Text(text!,style: TextStyle(color:Colors.white),),

                            onChanged: (newValue) {
                              setState(
                                    () {
                                  textValue = newValue;
                                  text = newValue;
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
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if(result != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Selected file:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                    ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: result?.files.length ?? 0,
                                        itemBuilder: (context, index) {
                                          return Text(result?.files[index].name ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold));
                                        })
                                  ],
                                ),),
                            Center(
                              child: ElevatedButton(   style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                onPressed: () async{
                                  result = await FilePicker.platform.pickFiles(allowMultiple: true );
                                  if (result == null) {
                                    print("No file selected");
                                  } else {
                                    setState(() {
                                    });
                                    result?.files.forEach((element) {
                                      print(element.name);
                                    });
                                  }
                                },
                                child: const Text("Choose File",style: TextStyle(color: Colors.black),),
                              ),
                            ),

                          ],
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
                              child: Text('Import',style: TextStyle(fontSize: 20,color:Colors.black)),
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
