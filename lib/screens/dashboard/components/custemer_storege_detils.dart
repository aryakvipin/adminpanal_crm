import 'package:flutter/material.dart';

import '../../../constants.dart';

import 'custemer_info_card.dart';


class CustemerStoregeDetails extends StatelessWidget {
  const CustemerStoregeDetails({
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
            "Custmer Details",
            style: TextStyle(color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          // SizedBox(height: defaultPadding),
          // Chart(),
          CustmerInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Arya",
            amountOfFiles: '9856749654',
            numOfFiles: "arya@gmail.com",
          ),
          CustmerInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Sruthi",
            amountOfFiles: '9856749654',
            numOfFiles: "srithi@gmail.com",
          ),
          CustmerInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "pranav",
            amountOfFiles: '9856749654',
            numOfFiles: "pranav@gmail.com",
          ),
          CustmerInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Anu",
            amountOfFiles: '9856749654',
            numOfFiles: "anu@gmail.com",
          ),
          CustmerInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Anu",
            amountOfFiles: '9856749654',
            numOfFiles: "anu@gmail.com",
          ),
          CustmerInfoCard(
            svgSrc:  "assets/images/profile_pic.png",
            title: "Anu",
            amountOfFiles: '9856749654',
            numOfFiles: "anu@gmail.com",
          ),
          CustmerInfoCard(
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
