import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicDetails extends StatefulWidget {
  const BasicDetails({Key? key}) : super(key: key);

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Please Select The Health Issue",
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: 'Please Enter Your Health Issue'),
              ),
            )),
            Column(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Pregnant",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Heart Attack",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Fracture",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 4,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Not Sure",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SecondDetails extends StatefulWidget {
  const SecondDetails({Key? key}) : super(key: key);

  @override
  State<SecondDetails> createState() => _SecondDetailsState();
}

class _SecondDetailsState extends State<SecondDetails> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          hintText: "Your Location",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: FaIcon(
                              FontAwesomeIcons.locationCrosshairs,
                              color: Colors.blue,
                              size: 22,
                            ),
                          ))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          hintText: "Enter Hospital Destination",
                          suffixIcon: Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ))),
                ),
              ],
            ),
          );
        });
  }
}

class ThirdDetails extends StatefulWidget {
  const ThirdDetails({Key? key}) : super(key: key);

  @override
  State<ThirdDetails> createState() => _ThirdDetailsState();
}

class _ThirdDetailsState extends State<ThirdDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
