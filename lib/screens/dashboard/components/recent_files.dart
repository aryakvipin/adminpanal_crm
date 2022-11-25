
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/RecentFile.dart';
import '../../../models/RecentFile.dart';
import '../../../models/RecentFile.dart';
import '../../pages/add_employee.dart';

class RecentFiles extends StatefulWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  State<RecentFiles> createState() => _RecentFilesState();
}

class _RecentFilesState extends State<RecentFiles> {
  @override
  Widget build(BuildContext context) {

    final _verticalScrollController = ScrollController();
    return Container(
    //  padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Padding(
              padding: const EdgeInsets.only(left: 20,top: 5),
              child: Text(
                "Recent Call",
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
            ),
            Container(
              height: 300,
              width: 700,

              child:SingleChildScrollView(
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
                          label: Text("File Name",style: TextStyle(color: Colors.white),),
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
                                  GestureDetector(child: Text("Arya",style: TextStyle(color: Colors.white),)
                                      ,onTap:(){
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(builder: (context) =>  AddEmployeeScreen()));
                                      }
                                    ,
                                  ),
                                  onTap: _getSelectedRowInfo,
                                ),
                                DataCell(
                                  Text("9464465465",style: TextStyle(color: Colors.white),),
                                  onTap: _getSelectedRowInfo,
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
            ),
          ],
        ),
      ),
    );
  }
}



void _getSelectedRowInfo() {
  print('Selected Item Row Name Here...');
}
// DataRow recentFileDataRow(RecentFile fileInfo) {
//   return
//     DataRow(
//
//     cells: [
//       DataCell(
//         Text(fileInfo.title!,style: TextStyle(color: Colors.white),),
//         onTap: _getSelectedRowInfo,
//       ),
//       DataCell(
//         Text(fileInfo.date!,style: TextStyle(color: Colors.white),),
//         onTap: _getSelectedRowInfo,
//        ),
//       DataCell(Text(fileInfo.size!,style: TextStyle(color: Colors.white),)),
//
//     ],
//
//   );
// }
