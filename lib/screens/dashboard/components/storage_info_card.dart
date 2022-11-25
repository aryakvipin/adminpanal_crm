
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../pages/edit_employee.dart';
import '../../pages/employee_screen.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  }) : super(key: key);

  final String title, svgSrc, amountOfFiles,numOfFiles;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 20,
            child:  Image.asset(svgSrc),

          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(

                      title,
                      maxLines:2,
                      overflow: TextOverflow.ellipsis,
                      style:TextStyle(color: Colors.white) ,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 10),
                    child: Text(
                      "$numOfFiles ",
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child:  Container( height: 40,width: 40,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,),
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>  EditEmployeeScreen())),
                child:  Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.edit,
                    color: Colors.black87,
                    size: 20.0,
                  ),
                ),
              ),

            ),
          ),
          Container( height: 40,width: 40,
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,),
                onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) =>  EmplyeeScreen())),
              child:  Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.delete,
                  color: Colors.black87,
                  size: 20.0,
                ),
              ),
            ),

          ),


        ],
      ),
    );
  }
  // Widget _buildRow(String imageAsset, String name, double score) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //     child: Column(
  //       children: <Widget>[
  //         SizedBox(height: 12),
  //         Container(height: 2, color: Colors.redAccent),
  //         SizedBox(height: 12),
  //         Row(
  //           children: <Widget>[
  //             CircleAvatar(backgroundImage: AssetImage(imageAsset)),
  //             SizedBox(width: 12),
  //             Text(name),
  //             Spacer(),
  //             Container(
  //               decoration: BoxDecoration(color: Colors.yellow[900], borderRadius: BorderRadius.circular(20)),
  //               padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
  //               child: Text('$score'),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
