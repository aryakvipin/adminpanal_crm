
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "Today Appointment",
    numOfFiles: 1328,

    totalStorage: "2.9GB",

    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Today Followup",
    numOfFiles: 1328,

    totalStorage: "2.9GB",

    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Today Call Back",
    numOfFiles: 1328,

    totalStorage: "1GB",

    percentage: 10,
  ),
  // CloudStorageInfo(
  //   title: "Documents",
  //   numOfFiles: 5328,
  //   svgSrc: "assets/icons/drop_box.svg",
  //   totalStorage: "7.3GB",
  //   color: Color(0xFF007EE5),
  //   percentage: 78,
  // ),
];
