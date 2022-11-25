

import 'package:flutter/material.dart';
import '../../../../constants.dart';

import '../../pages/add_custmer.dart';
import '../../pages/add_employee.dart';
import 'Completd_Details.dart';
import 'Completed.dart';


class CompletedReport extends StatelessWidget {
  // const MyEmployeeFiles({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:15),
          child: Container(width: 600,
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
                      "Completed Report",
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
        GestureDetector(
          child: Padding(
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
            onTap:(){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Completed_Report_Details()));
            }
        ),
        GestureDetector(
            child: Padding(
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
                                "Arya",
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
            onTap:(){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Completed_Report_Details()));
            }
        ),
        GestureDetector(
            child: Padding(
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
                                "sruthi",
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
            onTap:(){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  Completed_Report_Details()));
            }
        ),




      ],

    );
  }
}

