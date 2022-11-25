

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../screens/dashboard/components/custemer_info_card.dart';
import '../screens/pages/profile.dart';
import 'Employee_Dashboard.dart';
enum _MenuValues {
  todaycall,
  livereport,
  report,
  addstudent,
  totalreport,
  logout,

}
class Employee_Feild extends StatefulWidget {
  const Employee_Feild({
    Key? key,
  }) : super(key: key);

  @override
  State<Employee_Feild> createState() => _Employee_FeildState();
}
BuildContext? dcontext;
class _Employee_FeildState extends State<Employee_Feild> {
  TextEditingController dateInput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  String? traking;
  String? course;
  String? statuslevel;
  String? studentlvel;
  String? prefer;
  String? optional;

  @override
  void initState() {
    dateInput.text = "";
    timeinput.text = ""; //se//set the initial value of text field
    super.initState();
  }
  bool _isShow = false;


  dismissDailog(){
    if(dcontext != null){
      Navigator.pop(dcontext!);
    }
  }
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Form(
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:secondaryColor),
                    child: Text('Today Call',style: TextStyle(fontSize: 12,color:Colors.white)),
                    onPressed: () {


                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => EmplyeeScreen()));
                    }
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:secondaryColor),
                    child: Text('pending Call',style: TextStyle(fontSize: 12,color:Colors.white)),
                    onPressed: () {

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(backgroundColor:bgColor ,
                              content: Container(
                                 width: 300,

                                child: Column(

                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Text("Pending Students",style: TextStyle(color: Colors.white),),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context); //close Dialog
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 60),
                                                child: Icon(Icons.close),
                                              )
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: ListView.builder(
                                          itemCount: 10,
                                          itemBuilder: (BuildContext context, int index) {
                                            return Container(
                                              child: Card(color: secondaryColor,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text
                                                            (' No :',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 72),
                                                            child:   Text
                                                              (" $index",style: TextStyle
                                                              (fontSize: 12,color:Colors.white)),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text
                                                            ('Student Name :',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 16,top: 5),
                                                            child: Text
                                                              ('Arya',style: TextStyle
                                                              (fontSize: 12,color:Colors.white)),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text
                                                            ('Phone :',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 58,top: 5),
                                                            child:    Text
                                                              ('9785641236',style: TextStyle
                                                              (fontSize: 12,color:Colors.white)),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text
                                                            ('City :',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 68,top: 5),
                                                            child:   Text
                                                              (' Calicut',style: TextStyle
                                                              (fontSize: 12,color:Colors.white)),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text
                                                            ('Area :',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 65,top: 5),
                                                            child: Text
                                                              (' Vadakara ',style: TextStyle
                                                              (fontSize: 12,color:Colors.white)),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [

                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 10,top: 50),
                                                            child: ElevatedButton(
                                                                style: ElevatedButton.styleFrom(
                                                                  backgroundColor: Colors.white,),
                                                                child: Text
                                                                  (' TRACK NOW',style: TextStyle
                                                                  (fontSize: 10,color:Colors.black)),
                                                                onPressed: () {
                                                                  Navigator.pop(context);
                                                                  setState(
                                                                        () {
                                                                      if(_isShow=!_isShow) {

                                                                      }
                                                                      else{
                                                                        _isShow = !_isShow;

                                                                      }

                                                                    },
                                                                  );
                                                                }),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),

                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            );
                          }
                      );
                    }
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Column(
                  children: [

                    Container(


                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.white10),
                      ),
                      child: Row(

                        children: [
                          Image.asset(
                            "assets/images/profile_pic.png",
                            height: 38,
                          ),

                          // Padding(
                          //   padding:
                          //       const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                          //   child: Text("Angelina"),
                          // ),
                          PopupMenuButton<_MenuValues>(
                            icon: Icon(Icons.arrow_drop_down_circle_outlined),
                            itemBuilder: (BuildContext context) => [
                              PopupMenuItem(
                                child: Text('Today call'),
                                value: _MenuValues.todaycall,
                              ),
                              PopupMenuItem(
                                child: Text('Live Report'),
                                value: _MenuValues.livereport,
                              ),
                              PopupMenuItem(
                                child: Text('Report'),
                                value: _MenuValues.report,
                              ),
                              PopupMenuItem(
                                child: Text('Add Student'),
                                value: _MenuValues.addstudent,
                              ),
                              PopupMenuItem(
                                child: Text('Toatl Report'),
                                value: _MenuValues.totalreport,
                              ),
                              PopupMenuItem(
                                child: Text('Log out'),
                                value: _MenuValues.logout,
                              ),


                            ],
                            onSelected: (value) {
                              switch (value) {
                                case _MenuValues.todaycall:
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (c) => Profile()));
                                  break;
                                case _MenuValues.livereport:
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (c) => Profile()));
                                  break;
                                case _MenuValues.report:
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (c) => Profile()));
                                  break;
                                case _MenuValues.addstudent:
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (c) => Profile()));
                                  break;
                                case _MenuValues.totalreport:
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (c) => Profile()));
                                  break;

                                case _MenuValues.logout:
                                // Navigator.of(context)
                                //     .push(MaterialPageRoute(builder: (c) => SettingsPage()));
                                  break;

                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:secondaryColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Text('All Studnet',style: TextStyle(fontSize: 12,color:Colors.white)),
                  ),
                  onPressed: () {
                    // setState(
                    //       () {
                    //     _isShow = !_isShow;
                    //   },
                    //);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(backgroundColor:bgColor ,
                            content: Container(
                              width: 300,
                              child: Column(

                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Text("All Stident Details",style: TextStyle(color: Colors.white),),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context); //close Dialog
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 50),
                                              child: Icon(Icons.close),
                                            )
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: 10,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Container(
                                            child: Card(color: secondaryColor,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text
                                                          (' No :',style: TextStyle
                                                          (fontSize: 12,color:Colors.white)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 72),
                                                          child:   Text
                                                            (" $index",style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text
                                                          ('Student Name :',style: TextStyle
                                                          (fontSize: 12,color:Colors.white)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 16,top: 5),
                                                          child: Text
                                                            ('Arya',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text
                                                          ('Phone :',style: TextStyle
                                                          (fontSize: 12,color:Colors.white)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 58,top: 5),
                                                          child:    Text
                                                            ('9785641236',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text
                                                          ('City :',style: TextStyle
                                                          (fontSize: 12,color:Colors.white)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 68,top: 5),
                                                          child:   Text
                                                            (' Calicut',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text
                                                          ('Area :',style: TextStyle
                                                          (fontSize: 12,color:Colors.white)),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 65,top: 5),
                                                          child: Text
                                                            (' Vadakara ',style: TextStyle
                                                            (fontSize: 12,color:Colors.white)),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [

                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 10,top: 50),
                                                          child: ElevatedButton(
                                                              style: ElevatedButton.styleFrom(
                                                                backgroundColor: Colors.white,),
                                                              child: Text
                                                                (' TRACK NOW',style: TextStyle
                                                                (fontSize: 10,color:Colors.black)),
                                                              onPressed: () {
                                                                Navigator.pop(context);
                                                                setState(
                                                                      () {
                                                                    if(_isShow=!_isShow) {

                                                                    }
                                                                    else{
                                                                      _isShow = !_isShow;

                                                                    }

                                                                  },
                                                                );
                                                              }),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          );
                        }
                    );
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:secondaryColor),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: Text('Refrash',style: TextStyle(fontSize: 12,color:Colors.white)),
                    ),
                    onPressed: () {
                      setState(
                            () {
                          _isShow = false;


                        },
                      );
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Employee_Dashoard()),
                            (Route<dynamic> route) => false,

                      );
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) => EmplyeeScreen()));
                    }
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:secondaryColor),
                    child: Text('ReAlocation',style: TextStyle(fontSize: 12,color:Colors.white)),
                    onPressed: () {

                      showDialog(
                          context: context,

                          builder: (BuildContext context) {

                            return Realcoation();
                          }
                      );
                    }
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:secondaryColor),
                    child: Text('Missed Call',style: TextStyle(fontSize: 12,color:Colors.white)),
                    onPressed: () {

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return MissedCall();
                          }
                      );
                    }
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:secondaryColor),
                    child: Text("Today's Call",style: TextStyle(fontSize: 12,color:Colors.white)),
                    onPressed: () {

                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return TodayCall();
                          }
                      );
                    }
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Visibility(
              visible: _isShow,

              child: visble(),
            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20 ),
                child: Row(
                  children: <Widget>[

                    Expanded(

                      child:  Container(color:secondaryColor,width: 300,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10,bottom: 10),
                              child: Text("Tracking Status",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                            ),
                            Container
                              (
                              child: Column(
                                children: [
                                  RadioListTile(selectedTileColor:Colors.blue,
                                    title: Text("Call Back",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Call Back",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),

                                  RadioListTile(
                                    title: Text("Follow up",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Follow up",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),

                                  RadioListTile(
                                    title: Text("Appoinment",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Appoinment",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Compltetd",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "other",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Payment Pending",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Payment Pending",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Wrong Number",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Wrong Number",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("No Response",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "No Response",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Not Interested",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Not Interested",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Inavlid Number",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Invalid Number",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Busy",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Busy",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Not Recabale",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Not Recable",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("Enroll",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "Enroll",
                                    groupValue: traking,
                                    onChanged: (value){
                                      setState(() {
                                        traking = value.toString();
                                      });
                                    },
                                  ),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child:  Container(color:secondaryColor,height:710,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10,bottom: 10),
                              child: Text("Course",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                            ),
                            Container
                              (
                              child: Column(
                                children: [
                                  RadioListTile(selectedTileColor:Colors.blue,
                                    title: Text("None",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "None",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),

                                  RadioListTile(
                                    title: Text("AIPTS",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "AIPTS",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),

                                  RadioListTile(
                                    title: Text("IMP",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "IMP",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("FC",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "FC",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("ILP2022",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "ILP2022",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("TLP Plus 2021",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "TLP Plus 2021",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("TLP Plus 2022",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "TLP Plus 2022",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text("TLP Connect 2022",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "TLP Connect 2022",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),
                                  RadioListTile(
                                    title: Text(" PEP 2022",style:TextStyle(color: Colors.white,fontSize: 13),),
                                    value: "PEP 2022",
                                    groupValue: course,
                                    onChanged: (value){
                                      setState(() {
                                        course = value.toString();
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

          Padding(
            padding: const EdgeInsets.only(top:20 ),
            child: Row(
              children: <Widget>[

                Expanded(
                  child:  Container(color:secondaryColor,height: 430,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 10),
                          child: Text("Status Level",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                        ),
                        Container
                          (
                          child: Column(
                            children: [
                              RadioListTile(selectedTileColor:Colors.blue,
                                title: Text("None",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "None1",
                                groupValue: statuslevel,
                                onChanged: (value){
                                  setState(() {
                                    statuslevel = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Cold",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Cold",
                                groupValue: statuslevel,
                                onChanged: (value){
                                  setState(() {
                                    statuslevel = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Info",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Info",
                                groupValue: statuslevel,
                                onChanged: (value){
                                  setState(() {
                                    statuslevel = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Engage",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Engage",
                                groupValue: statuslevel,
                                onChanged: (value){
                                  setState(() {
                                    statuslevel = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Hot",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Hot",
                                groupValue: statuslevel,
                                onChanged: (value){
                                  setState(() {
                                    statuslevel = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Very Hot",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Very Hot",
                                groupValue: statuslevel,
                                onChanged: (value){
                                  setState(() {
                                    statuslevel = value.toString();
                                  });
                                },
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child:  Container(color:secondaryColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 10),
                          child: Text("Prefer Language",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                        ),
                        Container
                          (
                          child: Column(
                            children: [
                              RadioListTile(selectedTileColor:Colors.blue,
                                title: Text("None",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "None3",
                                groupValue: prefer,
                                onChanged: (value){
                                  setState(() {
                                    prefer = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("English",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "English",
                                groupValue: prefer,
                                onChanged: (value){
                                  setState(() {
                                    prefer = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Hindi",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Hindi",
                                groupValue: prefer,
                                onChanged: (value){
                                  setState(() {
                                    prefer = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Malayalam",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Malayalam",
                                groupValue: prefer,
                                onChanged: (value){
                                  setState(() {
                                    prefer = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Kannada",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Kannada",
                                groupValue: prefer,
                                onChanged: (value){
                                  setState(() {
                                    prefer = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Tamil",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Tamil",
                                groupValue: prefer,
                                onChanged: (value){
                                  setState(() {
                                    prefer = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Telugu",style:TextStyle(color: Colors.white),),
                                value: "Telugu",
                                groupValue: prefer,
                                onChanged: (value){
                                  setState(() {
                                    prefer = value.toString();
                                  });
                                },
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20 ),
            child: Row(
              children: <Widget>[

                Expanded(
                  child:  Container(color:secondaryColor,width: 500,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 10),
                          child: Text("Optional Subject",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                        ),

                        Container
                          (
                          child: Column(
                            children: [
                              RadioListTile(selectedTileColor:Colors.blue,
                                title: Text("None",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "None6",
                                groupValue: studentlvel,
                                onChanged: (value){
                                  setState(() {
                                    studentlvel = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Sociology",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Sociology",
                                groupValue: studentlvel,
                                onChanged: (value){
                                  setState(() {
                                    studentlvel = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Public administration",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Public administration",
                                groupValue: studentlvel,
                                onChanged: (value){
                                  setState(() {
                                    studentlvel = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Geography",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Geography",
                                groupValue: studentlvel,
                                onChanged: (value){
                                  setState(() {
                                    studentlvel = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Kannada literature",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Kannada literature",
                                groupValue: studentlvel,
                                onChanged: (value){
                                  setState(() {
                                    studentlvel = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Anthropology",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Anthropology",
                                groupValue: studentlvel,
                                onChanged: (value){
                                  setState(() {
                                    studentlvel = value.toString();
                                  });
                                },
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child:  Container(color:secondaryColor,height: 375,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 10),
                          child: Text("Student Level",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                        ),
                        Container
                          (
                          child: Column(
                            children: [
                              RadioListTile(selectedTileColor:Colors.blue,
                                title: Text("None",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "None4",
                                groupValue: optional,
                                onChanged: (value){
                                  setState(() {
                                    optional = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Farsher",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Farsher",
                                groupValue: optional,
                                onChanged: (value){
                                  setState(() {
                                    optional = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Repeater",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Repeater",
                                groupValue: optional,
                                onChanged: (value){
                                  setState(() {
                                    optional = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("PUC",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "PUC",
                                groupValue: optional,
                                onChanged: (value){
                                  setState(() {
                                    optional = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("High School",style:TextStyle(color: Colors.white,fontSize: 13),),
                                value: "Highschool",
                                groupValue: optional,
                                onChanged: (value){
                                  setState(() {
                                    optional = value.toString();
                                  });
                                },
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
            ],
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
                labelText: " Date" ,labelStyle:TextStyle(color: Colors.white), //label text of field

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
            child:TextField
              (style: TextStyle(color: Colors.white),
              controller: timeinput,
              //editing controller of this TextField
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: BoxDecorationColor, width: 2.0),
                ),
                //icon: Icon(Icons.calendar_today), //icon of text field
                labelText: " Time" ,labelStyle:TextStyle(color: Colors.white), //label text of field

              ),

              readOnly: true,  //set it true, so that user will not able to edit text
              onTap: () async {
                TimeOfDay? pickedTime =  await showTimePicker(
                  initialTime: TimeOfDay.now(),
                  context: context,
                );

                if(pickedTime != null ){
                  print(pickedTime.format(context));   //output 10:51 PM
                  DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                  //converting to DateTime so that we can further format on different pattern.
                  print(parsedTime); //output 1970-01-01 22:53:00.000
                  String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                  print(formattedTime); //output 14:59:00
                  //DateFormat() is from intl package, you can format the time on any pattern you need.

                  setState(() {
                    timeinput.text = formattedTime; //set the value of text field.
                  });
                }else{
                  print("Time is not selected");
                }
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
                label: Text("Comments",style: TextStyle(color: Colors.white),),
                hintText: "Enter Comment ",
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
                    // Refresh();
                    // final isValid = _formKey.currentState!.validate();
                    //
                    // if (isValid) {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => EmplyeeScreen()));
                    // } else {
                    //   // Fluttertoast.showToast(
                    //   //     msg: "Username / Password is Incorrect",
                    //   //     gravity: ToastGravity.BOTTOM,
                    //   //     fontSize: 16.0);
                    // }
                  }
              ),
            ),
          ),

        ],
      ),
    );
  }

}
class visble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(color:secondaryColor,height: 600,width: 400,
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("Nanadana",style: TextStyle(color:Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("6238633878",style: TextStyle(color:Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("nandana@gmail.com",style: TextStyle(color:Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("kannur",style: TextStyle(color:Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70,),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
                          child: Text('none',style: TextStyle(fontSize: 12,color:Colors.black)),
                          onPressed: () {
                            // setState(
                            //       () {
                            //     _isShow = !_isShow;
                            //   },
                            // );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
                            child: Text('Not Interseted',style: TextStyle(fontSize: 12,color:Colors.black)),
                            onPressed: () {
                              // setState(
                              //       () {
                              //     _isShow = !_isShow;
                              //   },
                              // );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
                    child: Text('22-10-2022',style: TextStyle(fontSize: 12,color:Colors.black)),
                    onPressed: () {
                      // setState(
                      //       () {
                      //     _isShow = !_isShow;
                      //   },
                      // );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
                    child: Text('Toatal Fee',style: TextStyle(fontSize: 12,color:Colors.black)),
                    onPressed: () {
                      // setState(
                      //       () {
                      //     _isShow = !_isShow;
                      //   },
                      // );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor:Colors.white),
                    child: Text('Balance Amount',style: TextStyle(fontSize: 12,color:Colors.black)),
                    onPressed: () {
                      // setState(
                      //       () {
                      //     _isShow = !_isShow;
                      //   },
                      // );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(color:Colors.white,height: 50,width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Default Contact"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor:bgColor),
                      child: Text('Add New',style: TextStyle(fontSize: 12,color:Colors.white)),
                      onPressed: () {
                        // setState(
                        //       () {
                        //     _isShow = !_isShow;
                        //   },
                        // );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Nanadana",style: TextStyle(fontSize: 12,color:Colors.white)),
              ),

            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("phone :",style: TextStyle(fontSize: 12,color:Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("9856321478",style: TextStyle(fontSize: 12,color:Colors.white)),
              ),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Nanadana@gmail.com",style: TextStyle(fontSize: 12,color:Colors.white)),
              ),

            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("whatsapp :",style: TextStyle(fontSize: 12,color:Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("9856321478",style: TextStyle(fontSize: 12,color:Colors.white)),
              ),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor:Colors.white,),
                child: Text('Show All Contacts',style: TextStyle(fontSize: 12,color:Colors.black)),
                onPressed: () {

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Realcoation extends StatefulWidget {

  @override
  State<Realcoation> createState() => _RealcoationState();
}

String? gender;
String? gen;
class _RealcoationState extends State<Realcoation> {

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(backgroundColor:bgColor,

      content: Container(
        width: 300,
        child:SingleChildScrollView(
          child: Column(

              children: <Widget>[
                Row(
                  children: [
                    Text("ReAlocation",style: TextStyle(color: Colors.white),),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context); //close Dialog
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(Icons.close),
                        )
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(color:secondaryColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 10),
                          child: Text("Telecaller",style: TextStyle(color: Colors.white),),
                        ),
                        Container
                          (
                          child: Column(
                            children: [
                              RadioListTile(selectedTileColor:Colors.blue,
                                title: Text("Male",style:TextStyle(color: Colors.white),),
                                value: "male",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Female",style:TextStyle(color: Colors.white),),
                                value: "female",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),

                              RadioListTile(
                                title: Text("Other",style:TextStyle(color: Colors.white),),
                                value: "other",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("othedr",style:TextStyle(color: Colors.white),),
                                value: "othedr",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Atsher",style:TextStyle(color: Colors.white),),
                                value: "Atsher",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text("Othserd",style:TextStyle(color: Colors.white),),
                                value: "Othserd",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(color:secondaryColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom: 10),
                          child: Text("Accountant",style: TextStyle(color: Colors.white),),
                        ),
                        Container
                          (
                          child: Column(
                            children: [
                              RadioListTile(selectedTileColor:Colors.blue,
                                title: Text("Ignacia Hughes",style:TextStyle(color: Colors.white),),
                                value: "Ignacia Hughes",
                                groupValue: gender,
                                onChanged: (value){
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
class MissedCall extends StatefulWidget {

  @override
  State<MissedCall> createState() => _MissedCallState();
}

class _MissedCallState extends State<MissedCall> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(backgroundColor:bgColor ,
      content: Container(
        width: 300,
        child: Column(

            children: <Widget>[
              Row(
                children: [
                  Text("Missed Call",style: TextStyle(color: Colors.white),),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context); //close Dialog
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Icon(Icons.close),
                      )
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, position) {
                    return Container(
                      child: Card(color: secondaryColor,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text
                                    ('Anusree',style: TextStyle
                                    (fontSize: 12,color:Colors.white)),

                                ],
                              ),
                              Row(
                                children: [
                                  Text
                                    ('16-Oct-2022',style: TextStyle
                                    (fontSize: 12,color:Colors.white)),

                                ],
                              ),
                              Row(
                                children: [
                                  Text
                                    (' 02:02:00 pm',style: TextStyle
                                    (fontSize: 12,color:Colors.white)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text
                                            (' TRACK NOW',style: TextStyle
                                            (fontSize: 12,color:Colors.black)),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        }),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),
                      ),
                    );
                  },
                ),
              ),
            ]
        ),
      ),
    );
  }
}
class TodayCall extends StatefulWidget {

  @override
  State<TodayCall> createState() => _TodayCallState();
}

class _TodayCallState extends State<TodayCall> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(backgroundColor:bgColor ,
      content: Container(
        width: 300,
        child: Column(

            children: <Widget>[
              Row(
                children: [
                  Text("Today Call",style: TextStyle(color: Colors.white),),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context); //close Dialog
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Icon(Icons.close),
                      )
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, position) {
                    return Container(
                      child: Card(color: secondaryColor,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text
                                    ('Anusree',style: TextStyle
                                    (fontSize: 12,color:Colors.white)),

                                ],
                              ),
                              Row(
                                children: [
                                  Text
                                    ('16-Oct-2022',style: TextStyle
                                    (fontSize: 12,color:Colors.white)),

                                ],
                              ),
                              Row(
                                children: [
                                  Text
                                    (' 02:02:00 pm',style: TextStyle
                                    (fontSize: 12,color:Colors.white)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10,right: 10),
                                          child: Text
                                            (' TRACK NOW',style: TextStyle
                                            (fontSize: 12,color:Colors.black)),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        }),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),
                      ),
                    );
                  },
                ),
              ),
            ]
        ),
      ),
    );
  }
}
