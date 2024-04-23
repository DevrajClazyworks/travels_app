import 'package:flutter/material.dart';
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
            title: Text('Are you sure?'),
            content: Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                  // Call exit(0) here to exit the app
                  exit(0);
                },
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 6,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: Width,
            color: Colors.amber,
          )
        ],
      ),
    ),
    );
  }
}