import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travelsapp/Utils/responsive.dart';
import 'dart:io';

class TrackingPage extends StatefulWidget {
  const TrackingPage({super.key});

  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
   Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  // Call exit(0) here to exit the app
                  exit(0);
                },
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
  
  static const LatLng _devraj = LatLng(12.9524875, 80.1540117);

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 6,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
     body: 
      Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            height: 50.0.hp,
            width: Width-20,
             child: GoogleMap(initialCameraPosition: CameraPosition(target: _devraj,
             zoom: 13,
             )),
           ),
         ),
       ],
     ),
    ),
    );
  }
}