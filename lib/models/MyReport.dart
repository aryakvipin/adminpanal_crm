
import 'package:flutter/material.dart';

class ReportCloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final int? id;
  final Color? color;

  ReportCloudStorageInfo({
    this.svgSrc,
    this.id,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List reortdemoMyFiles = [
  ReportCloudStorageInfo(
    id: 1,
    title: "Today Appointment",

  ),
  ReportCloudStorageInfo(
    title: "Today Followup",
    id: 2,
  ),
  ReportCloudStorageInfo(
    title: "Today Call Back",
    id: 3,
  ),
  ReportCloudStorageInfo(
    title: "No Response Report",
    id: 4,
  ),
  ReportCloudStorageInfo(
    title: "wrong Number Report",
    id: 5,
  ),
  ReportCloudStorageInfo(
    title: "Payment",
    id: 6,
  ),
  ReportCloudStorageInfo(
    title: "Pending Report",
    id: 7,
  ),
  ReportCloudStorageInfo(
    title: "Completed Report",
    id: 8,
  ),
  ReportCloudStorageInfo(
    title: "Not Interested Report",
    id: 9,
  ),
  ReportCloudStorageInfo(
    title: "Invalid Number Report",
    id: 10,
  ),
  ReportCloudStorageInfo(
    title: "Busy Report",
    id: 11,
  ),
  ReportCloudStorageInfo(
    title: "Not Rechable Report",
    id: 12,
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
