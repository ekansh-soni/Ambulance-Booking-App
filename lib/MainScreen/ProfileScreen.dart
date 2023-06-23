import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double? height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: height! * .4,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.teal.shade400,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.chevron_left_sharp,
                              color: Colors.white,
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 40,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "User Name",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ],
                  )),
              Container(
                decoration: BoxDecoration(color: Colors.teal.shade400),
                child: Container(
                  height: height! * .6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          print("Your Ride Page");
                        },
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.car),
                          title: Text("Your Rides"),
                          trailing: Icon(Icons.chevron_right_sharp),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Your Profile");
                        },
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.user),
                          title: Text("Profile"),
                          trailing: Icon(Icons.chevron_right_sharp),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.payment),
                        title: Text("Payment"),
                        trailing: Icon(Icons.chevron_right_sharp),
                      ),
                      ListTile(
                        leading: Icon(Icons.message),
                        title: Text("Messages"),
                        trailing: Icon(Icons.chevron_right_sharp),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.gear),
                        title: Text("Settings"),
                        trailing: Icon(Icons.chevron_right_sharp),
                      ),
                      ListTile(
                        leading: Icon(Icons.info_outline),
                        title: Text("About"),
                        trailing: Icon(Icons.chevron_right_sharp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
