// import 'package:flutter/material.dart';
//  void main(){
//    runApp(MaterialApp(home: Index(),));
//  }
// class Index extends StatefulWidget {
//   @override
//   State<Index> createState() => _IndexState();
// }
//
// class _IndexState extends State<Index> {
//   String? traking;
//   String? course;
//   String? statuslevel;
//   String? studentlvel;
//   String? prefer;
//   String? optional;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return new Scaffold(
//       appBar: new AppBar(
//         backgroundColor: const Color(0xFF0099a9),
//       ),
//       body: Column(
//         children: [
//           Row(
//             //ROW 1
//             children: [
//               Container(
//                 color: Colors.orange,
//                 margin: EdgeInsets.all(25.0),
//                 child: Column(
//       children: [
//       RadioListTile(selectedTileColor:Colors.blue,
//         title: Text("Call Back",style:TextStyle(color: Colors.white),),
//         value: "Call Back",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//
//       RadioListTile(
//         title: Text("Follow up",style:TextStyle(color: Colors.white),),
//         value: "Follow up",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//
//       RadioListTile(
//         title: Text("Appoinment",style:TextStyle(color: Colors.white),),
//         value: "Appoinment",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Compltetd",style:TextStyle(color: Colors.white),),
//         value: "other",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Payment Pending",style:TextStyle(color: Colors.white),),
//         value: "Payment Pending",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Wrong Number",style:TextStyle(color: Colors.white),),
//         value: "Wrong Number",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("No Response",style:TextStyle(color: Colors.white),),
//         value: "No Response",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Not Interested",style:TextStyle(color: Colors.white),),
//         value: "Not Interested",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Inavlid Number",style:TextStyle(color: Colors.white),),
//         value: "Invalid Number",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Busy",style:TextStyle(color: Colors.white),),
//         value: "Busy",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Not Recabale",style:TextStyle(color: Colors.white),),
//         value: "Not Recable",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//       RadioListTile(
//         title: Text("Enroll",style:TextStyle(color: Colors.white),),
//         value: "Enroll",
//         groupValue: traking,
//         onChanged: (value){
//           setState(() {
//             traking = value.toString();
//           });
//         },
//       ),
//
//
//       ],
//     ),
//               ),
//               Container(
//                 color: Colors.blue,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.purple,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             //ROW 1
//             children: [
//               Container(
//                 color: Colors.orange,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.blue,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//               Container(
//                 color: Colors.purple,
//                 margin: EdgeInsets.all(25.0),
//                 child: FlutterLogo(
//                   size: 60.0,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//
//     );
//   }
// }