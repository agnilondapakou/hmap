// appbar widget
//           TopBarWidget(),
//         ],
//       ),
//     );
//   }
// }
//
// Path: lib/widgets/top_bar_widget.dart
// Compare this snippet from lib/widgets/top_bar_widget.dart:
// import 'package:flutter/material.dart';
// import 'package:hmap/pages/dashboard_page.dart';
// import 'package:hmap/pages/loading_page.dart';
// import 'package:hmap/pages/login_page.dart';
// import 'package:hmap/pages/register_page.dart';
// import 'package:hmap/pages/search_page.dart';
// import 'package:hmap/pages/settings_page.dart';
// import 'package:hmap/pages/splash_page.dart';
// import 'package:hmap/pages/welcome_page.dart';
//
// class TopBarWidget extends StatelessWidget {
//   const TopBarWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 255, 255, 255),
//         boxShadow: [
//           BoxShadow(
//             color: Color.fromARGB(26, 0, 0, 0),
//             offset: Offset(0, 4),
//             blurRadius: 4,
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             width: 60,
//             height: 60,
//             margin: EdgeInsets.only(left: 16),
//             child: Image.asset(
//               "assets/images/menu.png",
//               fit: BoxFit.none,
//             ),
//           ),
//           Container(
//             width: 60,
//             height: 60,
//             margin: EdgeInsets.only(right: 16),
//             child: Image.asset(
//               "assets/images/notification.png",
  