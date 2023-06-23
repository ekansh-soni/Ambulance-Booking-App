import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vehicle_inspection/screens/MobileSignIn.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ambulance_background.jpeg'),
                  fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 30),
          child: Text(
            'Hey! Welcome',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: InkWell(
                child: Text(
                  "Already Have an Account?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 230,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    // physics: NeverScrollableScrollPhysics(),
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MobileSignIn(),
                              ));
                        },
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.phone),
                          title: Text("Continue with Mobile Number"),
                          trailing: Icon(Icons.chevron_right_sharp),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.email_outlined),
                        title: Text("Continue with Google"),
                        trailing: Icon(Icons.chevron_right_sharp),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.apple),
                        title: Text("Continue with Apple"),
                        trailing: Icon(Icons.chevron_right_sharp),
                      ),
                      
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebook),
                        title: Text("Continue with Facebook"),
                        trailing: Icon(Icons.chevron_right_sharp),
                      ),
                    ],
                    
                  ),
                  
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
