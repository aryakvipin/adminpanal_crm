

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import '../../pages/add_employee.dart';


class MyEmployeeFiles extends StatelessWidget {
  // const MyEmployeeFiles({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Text(
            //   "My Files",
            //   style: Theme.of(context).textTheme.subtitle1,
            // ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                backgroundColor:  Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                  defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>  AddEmployeeScreen()));
              },
              icon: Icon(Icons.add,color: Colors.black,),
              label: Text("Add Employee" ,style:TextStyle(color: Colors.black) ,),
            ),
          ],
        ),

      ],
    );
  }
}

