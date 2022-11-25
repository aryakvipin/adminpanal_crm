


import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import '../../pages/add_custmer.dart';

class MyCustemerFiles extends StatefulWidget {
  const MyCustemerFiles({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCustemerFiles> createState() => _MyCustemerFilesState();
}

class _MyCustemerFilesState extends State<MyCustemerFiles> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

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
                    .push(MaterialPageRoute(builder: (context) =>  AddCustmerScreen()));
              },
              icon: Icon(Icons.add,color: Colors.black,),
              label: Text("Add Custemer" ,style:TextStyle(color: Colors.black) ,),
            ),
          ],
        ),

      ],
    );
  }
}

