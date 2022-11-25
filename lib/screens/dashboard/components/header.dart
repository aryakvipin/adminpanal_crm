
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controllers/MenuController.dart';
import '../../../responsive.dart';
import '../../pages/profile.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),color: Colors.white,
           onPressed: context.read<MenuController>().controlMenu,

          ),

        if (!Responsive.isMobile(context))
          // Text(
          //   "Dashboard",
          //   style: TextStyle(color: Colors.white),
          // ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        // Expanded(child: SearchField()),
        Container(

          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.white10),
          ),
          child: Row(

            children: [
              Image.asset(
                "assets/images/profile_pic.png",
                height: 38,
              ),

              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              //   child: Text("Angelina"),
              // ),
              PopupMenuButton<_MenuValues>(
                icon: Icon(Icons.arrow_drop_down_circle_outlined),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    child: Text('Profile'),
                    value: _MenuValues.profile,
                  ),
                  PopupMenuItem(
                    child: Text('Log out'),
                    value: _MenuValues.logout,
                  ),

                ],
                onSelected: (value) {
                  switch (value) {
                    case _MenuValues.profile:
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (c) => Profile()));
                      break;
                    case _MenuValues.logout:
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (c) => SettingsPage()));
                      break;

                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
enum _MenuValues {
  profile,
  logout,

}

// class SearchField extends StatelessWidget {
//   const SearchField({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: "Search",
//         fillColor: secondaryColor,
//         filled: true,
//         border: OutlineInputBorder(
//           borderSide: BorderSide.none,
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//         ),
//         suffixIcon: InkWell(
//           onTap: () {},
//           child: Container(
//             padding: EdgeInsets.all(defaultPadding * 0.75),
//             margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
//             decoration: BoxDecoration(
//               color: primaryColor,
//               borderRadius: const BorderRadius.all(Radius.circular(10)),
//             ),
//             child: SvgPicture.asset("assets/icons/Search.svg"),
//           ),
//         ),
//       ),
//     );
//   }
// }
