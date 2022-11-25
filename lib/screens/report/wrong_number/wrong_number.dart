
import 'package:flutter/material.dart';


import '../../../constants.dart';

import '../../../responsive.dart';
import '../../dashboard/components/My_add_emplooyee_file.dart';
import '../../dashboard/components/header.dart';


import '../../dashboard/components/my_upload_data.dart';
import '../../dashboard/components/storage_details.dart';
import '../../main/components/side_menu.dart';
import 'wrong_number_report.dart';


class Wrong_Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      //  key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(

                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: SingleChildScrollView(
                primary: false,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Header(),
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              //   MyAddEmployee(),
                              SizedBox(height: defaultPadding),
                              //  RecentFiles(),
                              //   if (Responsive.isMobile(context))
                              //     SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context))  Wrong_Number_Report(),
                            ],
                          ),
                        ),
                        if (!Responsive.isMobile(context))
                          SizedBox(width: defaultPadding),
                        // On Mobile means if the screen is less than 850 we dont want to show it
                        // if (!Responsive.isMobile(context))
                        //   Expanded(
                        //
                        //     child:  MyAddEmployee(),
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
