
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../dashboard/components/my_reports.dart';
import '../../pages/custemer_screen.dart';
import '../../pages/employee_screen.dart';
import '../../pages/profile.dart';
import '../../pages/reports.dart';
import '../../pages/upload_data.dart';
import '../main_screen.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: secondaryColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/Crm_logo.png",height: 10,width: 10,),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    MainScreen(),
              ));
            },
          ),
          DrawerListTile(
            title: "Employees",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    EmplyeeScreen(),
              ));
            },
          ),
          DrawerListTile(
            title: "Data Managment",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    CutemerScreen(),
              ));
            },
          ),
          DrawerListTile(
            title: "Reports",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    Reports(),
              ));
            },
          ),
          DrawerListTile(
            title: "Upload Data",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      UploadData(),
              ));
            },
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_notification.svg",
            press: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    Profile(),
              ));
            },
          ),


        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
