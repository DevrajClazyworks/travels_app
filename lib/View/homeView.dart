// import 'package:flutter/material.dart';
// import 'package:travelsapp/Utils/responsive.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({super.key});

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {
//   @override
//   Widget build(BuildContext context) {
//     double Width = MediaQuery.of(context).size.width;
//     double Height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: Height * 0.5,
//             color: Colors.amber,
//             child: ListView.builder(
//               itemCount: showOption().length,
//               itemBuilder: (context, index) => Padding(
//                 padding: EdgeInsets.only(left: 20.0.wp, right: 20.0.wp),
//                 child: SizedBox(
//                     height: 10.0.hp,
//                     child: Card(
//                       child: Column(
//                         children: [
//                           Text(showOption()[index]['title'].toString())
//                         ],
//                       ),
//                     )),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   showOption() {
//     List<dynamic> listCard = [];
//     listCard = [
//       {
//         "title": "Tracker",
//         "Image": "assets/images/newBooking1.png",
//         "page": "/NewBookingOptions"
//       },
//       {
//         "title": "Profile",
//         "Image": 'assets/images/Appointments.png',
//         "page": "/AppointMent"
//       },
//       {
//         "title": "Notification",
//         "Image": "assets/images/MyReports.png",
//         "page": '/ComingSoon'
//       },
//     ];
//     return listCard;
//   }
// }
