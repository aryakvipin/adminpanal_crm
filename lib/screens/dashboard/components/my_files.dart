//
// import 'package:admin/responsive.dart';
// import 'package:flutter/material.dart';
// import 'package:admin/models/MyFiles.dart';
// import '../../../constants.dart';
// import 'My_add_emplooyee_file.dart';
// import 'file_info_card.dart';
//
// class MyFiles extends StatelessWidget {
//   const MyFiles({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //   children: [
//         //     Text(
//         //       "My Files",
//         //       style: Theme.of(context).textTheme.subtitle1,
//         //     ),
//         //     ElevatedButton.icon(
//         //       style: TextButton.styleFrom(
//         //         padding: EdgeInsets.symmetric(
//         //           horizontal: defaultPadding * 1.5,
//         //           vertical:
//         //               defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
//         //         ),
//         //       ),
//         //       onPressed: () {},
//         //       icon: Icon(Icons.add),
//         //       label: Text("Add New"),
//         //     ),
//         //   ],
//         // ),
//     //    SizedBox(height: defaultPadding),
//         Responsive(
//           mobile: FileInfoCardGridView(
//             crossAxisCount: _size.width < 650 ? 2 : 4,
//             childAspectRatio: _size.width < 650 ? 1.3 : 1,
//           ),
//           tablet: FileInfoCardGridView(),
//           desktop: FileInfoCardGridView(
//             childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class FileInfoCardGridView extends StatelessWidget {
//   const FileInfoCardGridView({
//     Key? key,
//     this.crossAxisCount = 4,
//     this.childAspectRatio = 1,
//   }) : super(key: key);
//
//   final int crossAxisCount;
//   final double childAspectRatio;
//
//   @override
//   Widget build(BuildContext context) {
//     return  GridView(children: [
//       InkWell(
//         onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAddEmployee()));
//         },
//         child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red,),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.home,size: 50,color: Colors.white,),
//               Text("Home",style: TextStyle(color: Colors.white,fontSize: 30),)
//             ],),
//         ),
//       ),
//       InkWell(
//         onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAddEmployee()));
//         },
//         child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow,),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.search,size: 50,color: Colors.white,),
//               Text("Search",style: TextStyle(color: Colors.white,fontSize: 30),)
//             ],),
//         ),
//       ),
//       InkWell(
//         onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAddEmployee()));
//         },
//         child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.settings,size: 50,color: Colors.white,),
//               Text("Settings",style: TextStyle(color: Colors.white,fontSize: 30),)
//             ],),
//         ),
//       ),
//       InkWell(
//         onTap: (){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAddEmployee()));
//         },
//         child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey,),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.book,size: 50,color: Colors.white,),
//               Text("Books",style: TextStyle(color: Colors.white,fontSize: 30),)
//             ],),
//         ),
//       ),
//     ],
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
//     );
//   }
// }
