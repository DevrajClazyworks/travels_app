import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xff2C3532), Colors.black],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 1.0.hp,
              ),
              ListTile(
                leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  'assets/images/TRACKBYLOGO.png', // Replace with your actual image path
                  fit: BoxFit.cover,
                ),
              ),
              trailing: const Text("XX XXXXXXX\n+7695909945",
              style: TextStyle(
                fontSize:20,
                fontFamily: "jost",
                fontWeight: FontWeight.w600,
                color: Color(0xffFFCB9B)
              ),
              ),
              ),
           SizedBox(
                height: 3.0.hp,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Good Morning\nK.Devraj",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "popins",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    )
                  ],
                ),
              ), 
            ],
          ),
        ),
      ),
     body: 
      Column(
        children: [
          SizedBox(
            height: 2.0.hp,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Location",
              style: TextStyle(
                fontSize: 22,
                fontFamily: "Jost",
                fontWeight: FontWeight.w500
              ),
              )
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Center(
            child: Container(
                        height: Height * 0.59,
                        width: Width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200],
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 7,
                                  spreadRadius: 1,
                                  offset: Offset(1, 4))
                            ]),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Align(
                              child:GoogleMap(
                                      liteModeEnabled: Platform.isIOS ? false : true,
                                      // zoomGesturesEnabled: true, //enable Zoom in, out on map
                                      initialCameraPosition: CameraPosition(
                                        //innital position in map
                                        target: _devraj, //initial position
                                        zoom: 17.0,
                                        //initial zoom level
                                      ),
                                      // markers: markers, //markers to show on map
                                      // polylines: Set<Polyline>.of(polylines.values), //polylines
                                      mapType: MapType.normal,
            
                                      myLocationEnabled: true, //map type
                                      myLocationButtonEnabled: true,
                                    ),
                            ),
                          ),
                        )),
          ),
        ],
      ),
    ),
    );
  }
}
