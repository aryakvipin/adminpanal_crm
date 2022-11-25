

import 'package:flutter/material.dart';
import '../../../../constants.dart';

import '../../../models/RecentFile.dart';
import '../../pages/add_custmer.dart';
import '../../pages/add_employee.dart';
import 'payemnt.dart';


class Payment_list extends StatelessWidget {
  // const MyEmployeeFiles({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _verticalScrollController = ScrollController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:15),
          child: Container(width: 700,
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35),
                    child: Text(
                      "Payment Details Report",
                      style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Container(width: 600,
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Card(color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35,right: 35),
                          child: Text(
                            "pranav",
                            style: TextStyle(color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Card(color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35,right: 35),
                          child: Text(
                            "Call back",
                            style: TextStyle(color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 29,right: 29),
                          child: Text(
                            "9856321452",
                            style: TextStyle(color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Card(color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35,right: 35),
                          child: Text(
                            "Cold",
                            style: TextStyle(color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: defaultPadding),
                  // Chart(),

                ],
              ),
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35,right: 35),
                        child: Text(
                          "Traking Status",
                          style: TextStyle(color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 700,
                    //  padding: EdgeInsets.all(defaultPadding),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SingleChildScrollView(
                      controller: _verticalScrollController,
                      scrollDirection: Axis.vertical,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                            dividerColor: Colors.white12
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DataTable(
                            columnSpacing: 16,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              border: Border.all(color: Colors.white12),
                              borderRadius: BorderRadius.circular(10),),



                            columns: [
                              DataColumn(
                                label: Text("File ",style: TextStyle(color: Colors.white),),
                              ),
                              DataColumn(
                                label: Text("Date",style: TextStyle(color: Colors.white),),
                              ),
                              DataColumn(
                                label: Text("Size",style: TextStyle(color: Colors.white),),
                              ),
                            ],
                            rows: List.generate(
                              demoRecentFiles.length,
                                  (index) => DataRow(

                                cells: [
                                  DataCell(
                                    GestureDetector(child: Text("pranav",style: TextStyle(color: Colors.white),)
                                      ,onTap:(){
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(builder: (context) =>  AddEmployeeScreen()));
                                      }
                                      ,
                                    ),

                                  ),
                                  DataCell(
                                    Text("9464465465",style: TextStyle(color: Colors.white),),

                                  ),
                                  DataCell(Text("21-5-2022",style: TextStyle(color: Colors.white),)),

                                ],

                              ),
                              //recentFileDataRow(demoRecentFiles[index]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  // SizedBox(height: defaultPadding),
                  // Chart(),

                ],
              ),
            ),

          ),
        ),




      ],
    );
  }
}

