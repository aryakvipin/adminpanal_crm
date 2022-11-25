
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';


import '../constants.dart';
import '../responsive.dart';
import 'Employee_Feild.dart';





class Employee_Dashoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: bgColor,
  // key: context.read<MenuController>().scaffoldKey,

      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen

            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: SingleChildScrollView(
                primary: false,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                  //  EmployeeHeader(),
                  //   SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Employee_Feild(),
                            //  SizedBox(height: defaultPadding),
                              // RecentFiles(),
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                              // if (Responsive.isMobile(context)) RecentDats(),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                        //  On Mobile means if the screen is less than 850 we dont want to show it
                        // if (!Responsive.isMobile(context))
                        //   Expanded(
                        //     flex: 2,
                        //     child: RecentDats(),
                        //   ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

