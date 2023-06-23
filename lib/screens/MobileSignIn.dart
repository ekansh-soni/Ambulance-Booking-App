import 'package:flutter/material.dart';
import 'package:vehicle_inspection/MainScreen/HomeScreen.dart';

class MobileSignIn extends StatefulWidget {
  const MobileSignIn({Key? key}) : super(key: key);

  @override
  State<MobileSignIn> createState() => _MobileSignInState();
}

class _MobileSignInState extends State<MobileSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/ambulance_background.jpeg'),
              fit: BoxFit.fill,
            )),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "What's Your Mobile Number or E-Mail ?",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Your  Email or Mobile Number'),
                        ),
                        // ElevatedButton(onPressed: () {}, child: Text("Continue"))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ChooseAmbulance(),
                          ));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
