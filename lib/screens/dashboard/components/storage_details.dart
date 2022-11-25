import 'package:flutter/material.dart';

import '../../../constants.dart';

import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Employee Details",
            style: TextStyle(color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          // SizedBox(height: defaultPadding),
          // Chart(),
          StorageInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Arya",
            amountOfFiles: "1.3GB",
            numOfFiles: "arya@gmail.com",
          ),
          StorageInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Sruthi",
            amountOfFiles: "15.3GB",
            numOfFiles: "srithi@gmail.com",
          ),
          StorageInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "pranav",
            amountOfFiles: "1.3GB",
            numOfFiles: "pranav@gmail.com",
          ),
          StorageInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Anu",
            amountOfFiles: "1.3GB",
            numOfFiles: "anu@gmail.com",
          ),
          StorageInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Anu",
            amountOfFiles: "1.3GB",
            numOfFiles: "anu@gmail.com",
          ),
          StorageInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Anu",
            amountOfFiles: "1.3GB",
            numOfFiles: "anu@gmail.com",
          ),
          StorageInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Anu",
            amountOfFiles: "1.3GB",
            numOfFiles: "anu@gmail.com",
          ),
        ],
      ),
    );
  }
}
