
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/MyReport.dart';
import '../../../responsive.dart';
import '../../pages/add_employee.dart';
import '../../report/appoiments/Today_appoinmrnts.dart';
import '../../report/busy/busy.dart';
import '../../report/call_back/Today_call_back.dart';
import '../../report/completed/Completed.dart';
import '../../report/followup/Today_follow_up.dart';
import '../../report/invalid_number/invalid_number.dart';
import '../../report/no_response/No_response.dart';
import '../../report/not_interseted/not_intersted.dart';
import '../../report/not_rechable/notrechable.dart';
import '../../report/payment/payemnt.dart';
import '../../report/pending/pending.dart';
import '../../report/wrong_number/wrong_number.dart';
import 'ReportFile_info_card.dart';
import 'file_info_card.dart';

class MyReports extends StatefulWidget {
  const MyReports({
    Key? key,
  }) : super(key: key);

  @override
  State<MyReports> createState() => _MyReportsState();
}

class _MyReportsState extends State<MyReports> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          ],
        ),
        //  SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 12,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.12,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 12,
    this.childAspectRatio =1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: reortdemoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Today Appointment",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  TodayAppoinmnts()));
                    }
                ),
              ),
            ),
          );

    }
    else if (index == 1) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Today Followup",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Today_Follow_Up()));
                    }
                ),
              ),
            ),
          );


    }
        else if (index == 2) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Today Call Back",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  TodayCallBack()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 3) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "No Response Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  No_Response()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 4) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Wrong Number Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Wrong_Number()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 5) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Payment",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Payment()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 6) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Pending Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Pending()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 7) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Completed Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Completed()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 8) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Not Interested Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Not_Intersted()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 9) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Invalid Number Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Invalid_Number()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 10) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Busy Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Busy()));
                    }
                ),
              ),
            ),
          );

        }
        else if (index == 11) {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              child: Center(
                child: GestureDetector(
                    child: Text(
                      "Not Rechable Report",
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
                    onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Not_Recable()));
                    }
                ),
              ),
            ),
          );

        }


    else {
          return Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),

          );
    }
  }
  );

  }
}
