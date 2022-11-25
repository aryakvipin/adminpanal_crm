// import 'package:admin/models/MyFiles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../../../constants.dart';
// import '../../../models/MyReport.dart';
// import '../../pages/add_employee.dart';
// import '../../pages/employee_screen.dart';
//
// class ReportFileInfoCard extends StatelessWidget {
//   const ReportFileInfoCard({
//     Key? key,
//     required this.info,
//   }) : super(key: key);
//
//   final ReportCloudStorageInfo info;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(defaultPadding),
//       decoration: BoxDecoration(
//         color: secondaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           GestureDetector(
//             child: Text(
//               info.title!,
//               maxLines:2,
//               overflow: TextOverflow.ellipsis,style: TextStyle(color:Colors.white),),
//                onTap:(){
//                Navigator.of(context)
//           .push(MaterialPageRoute(builder: (context) =>  AddEmployeeScreen()));
//                  }
//                ),
//
//           // Text(
//           //   "0",
//           //   style: Theme.of(context)
//           //       .textTheme
//           //       .caption!
//           //       .copyWith(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),
//           // ),
//           // Padding(
//           //   padding: const EdgeInsets.only(top: 10),
//           //   child: Divider(
//           //     color: Colors.white12,
//           //     thickness: 2,
//           //   ),
//           // ),
//           // GestureDetector(child: Text(
//           //   " View ${ info.title!}",
//           //
//           //   overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 10),)
//           //   ,onTap:(){
//           //     Navigator.of(context)
//           //         .push(MaterialPageRoute(builder: (context) =>  AddEmployeeScreen()));
//           //   }
//           //   ,
//           // ),
//
//
//         ],
//       ),
//     );
//   }
// }
// //
// // class ProgressLine extends StatelessWidget {
// //   const ProgressLine({
// //     Key? key,
// //     this.color = primaryColor,
// //     required this.percentage,
// //   }) : super(key: key);
// //
// //   final Color? color;
// //   final int? percentage;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Stack(
// //       children: [
// //         Container(
// //           width: double.infinity,
// //           height: 5,
// //           decoration: BoxDecoration(
// //             color: color!.withOpacity(0.1),
// //             borderRadius: BorderRadius.all(Radius.circular(10)),
// //           ),
// //         ),
// //         LayoutBuilder(
// //           builder: (context, constraints) => Container(
// //             width: constraints.maxWidth * (percentage! / 100),
// //             height: 5,
// //             decoration: BoxDecoration(
// //               color: color,
// //               borderRadius: BorderRadius.all(Radius.circular(10)),
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
