import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:latlong2/latlong.dart';
import 'package:vehicle_inspection/MainScreen/ProfileScreen.dart';
import 'package:vehicle_inspection/screens/HomeScreenElements.dart';

class ChooseAmbulance extends StatefulWidget {
  const ChooseAmbulance({Key? key}) : super(key: key);

  @override
  State<ChooseAmbulance> createState() => _ChooseAmbulanceState();
}

class _ChooseAmbulanceState extends State<ChooseAmbulance> {
  GlobalKey<FormState> basicFormKey = GlobalKey<FormState>();
  int activeIndex = 0;
  int totalIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Map Working
          Container(
              child: FlutterMap(
            options: MapOptions(
                center: LatLng(26.885466, 75.820098),
                maxZoom: 15,
                zoom: 12,
                minZoom: 10),
            nonRotatedChildren: [
              // AttributionWidget.defaultWidget(source: "Made By Ekansh "),
            ],
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              LocationMarkerLayer(
                  position: LocationMarkerPosition(
                      latitude: 26.912434,
                      longitude: 75.787270,
                      accuracy: double.nan))
            ],
          )),

          // Profile Screeen

          Container(
              margin: EdgeInsets.only(top: 60, left: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.teal.shade400,
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
              )),

          Center(
            child: SizedBox(
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: WillPopScope(
                  onWillPop: () async {
                    if (activeIndex != 0) {
                      activeIndex--;
                      setState(() {});
                      return false;
                    }
                    return true;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                print("Emergency Tap");
                              },
                              child: Text(
                                "Emergency Book",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.teal.shade400,
                                borderRadius: BorderRadius.circular(20)),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.height / 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 320,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: bodyBuilder() // Add A widget Here
                          ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal.shade400,
                            fixedSize: Size(
                                MediaQuery.of(context).size.width - 80, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          activeIndex++;
                          setState(() {});
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(fontSize: 24),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bodyBuilder() {
    switch (activeIndex) {
      case 0:
        return BasicDetails();
      case 1:
        return SecondDetails();
      case 2:
        return ThirdDetails();
      default:
        return BasicDetails();
    }
  }

}
