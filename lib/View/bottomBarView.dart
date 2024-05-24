import 'package:flutter/material.dart';
import 'package:travelsapp/Utils/responsive.dart';
import 'package:travelsapp/View/notificationView.dart';
import 'package:travelsapp/View/profileView.dart';
import 'package:travelsapp/View/tracking.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return PopScope(
      canPop: false,
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          body: TabBarView(children: [
            Tab(
              child: TrackingPage(),
            ),
            Tab(
              child: NotificationView(),
            ),
            Tab(
              child: ProfilView(),
            )
          ]),
          bottomNavigationBar: Container(
            height: height * 0.07,
            width: width * 0.8,
            decoration: BoxDecoration(
              color: Color(0xff2C3532),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                border: Border.all(color: Color(0xff2C3532))
                ),
            child: Center(
                child: TabBar(
                    indicatorPadding: EdgeInsets.only(bottom: 55),
                    tabs: [
                  Column(
                    children: [
                      SizedBox(height: 1.0.hp),
                      Icon(Icons.location_on,
                      color: Color(0xffFFCB9B)),
                      Text("Track",
                      style: TextStyle(
                        color:  Color(0xffFFCB9B)
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 1.0.hp),
                      Icon(Icons.notifications_active,
                      color: Color(0xffFFCB9B)),
                      Text("Notification",
                      style: TextStyle(
                        color: Color(0xffFFCB9B)
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 1.0.hp),
                      Icon(Icons.person,
                      color:Color(0xffFFCB9B) ,),
                      Text("Profile",
                      style: TextStyle(
                        color: Color(0xffFFCB9B)
                      ),
                      )
                    ],
                  )
                ])),
          ),
        ),
      ),
    );
  }
}
