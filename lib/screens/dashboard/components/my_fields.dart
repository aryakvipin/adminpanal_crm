
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/MyFiles.dart';
import '../../../responsive.dart';
import '../../pages/add_employee.dart';
import '../../report/appoiments/Today_appoinmrnts.dart';
import '../../report/call_back/Today_call_back.dart';
import '../../report/followup/Today_follow_up.dart';
import 'file_info_card.dart';

class MyFiles extends StatefulWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  State<MyFiles> createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
        //  SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demoMyFiles.length,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today Appointment",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),
                  ),
                  Text(
                    "0",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.white12,
                      thickness: 2,
                    ),
                  ),
                  GestureDetector(child: Text(
                    " View Today Appointment",

                    overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 10),)
                    ,onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  TodayAppoinmnts()));
                    }
                    ,
                  ),


                ],
              ),
            );
          } else if (index == 1) {
            return Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today Followup",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),
                  ),
                  Text(
                    "0",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.white12,
                      thickness: 2,
                    ),
                  ),
                  GestureDetector(child: Text(
                    " View Today Followup",

                    overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 10),)
                    ,onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  Today_Follow_Up()));
                    }
                    ,
                  ),


                ],
              ),
            );
          } else if (index == 2) {
            return Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today Call Back",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),
                  ),
                  Text(
                    "0",
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.white12,
                      thickness: 2,
                    ),
                  ),
                  GestureDetector(child: Text(
                    " View Today Call Back",

                    overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 10),)
                    ,onTap:(){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) =>  TodayCallBack()));
                    }
                    ,
                  ),


                ],
              ),
            );
          }
         else {
            return Container(
              padding: EdgeInsets.all(defaultPadding),


            );
          }
        });
  }
}
