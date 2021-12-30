import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get mainAxisAlignment => null;
  bool toggleValue = false;
  bool newtoggleValue = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              height: height,
              width: width / 4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [
                    0.64,
                    1.1,
                    1.3,
                    1.3,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF400080),
                    Color(0xFF0080ff),
                    Color(0xFFFC77FB),
                    Color(0xFF1bade4),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    // color: Colors.amber,
                    margin:
                        EdgeInsets.symmetric(horizontal: 23.0, vertical: 26.0),

                    child: Wrap(
                      direction: Axis.horizontal,

                      //  crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 16.0,
                      children: [
                        Icon(Icons.school_rounded,
                            size: 60.0, color: Colors.teal),
                        Text("SCHOOL",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 42.0,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  sideBarItem(Icons.dashboard_outlined, "DASHBOARD"),
                  sideBarItem(Icons.messenger_rounded, "LogBook"),
                  sideBarItem(Icons.calendar_today, "Calendar"),
                  sideBarItem(Icons.storage_rounded, "Database"),
                  sideBarItem(Icons.people_outline_sharp, "Attendance"),
                  sideBarItem(
                    Icons.settings,
                    "Settings",
                  ),
                ],
              ),
            ),
            Container(
              height: height,
              width: width / 4,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Column(children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40.0),
                  child: Text("Set Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      )),
                ),
                Container(
                  height: 0.70,
                  width: 280,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(
                    left: 55.0,
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 200.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    "School Set Up",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 200.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    "Year Group Set Up",
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 200.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Classroom Set Up",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  height: 50.0,
                  width: 250.0,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 173, 226, 226),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Text(
                    "Admin Set Up",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 200.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(
                    "Attendance log",
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ]),
            ),
            Container(
              height: height,
              width: width / 2,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(
                      top: 90,
                      left: 70,
                    ),
                    child: Text(
                      "Admin's Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                  Container(
                      height: 0.70,
                      width: 400,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(top: 7, right: 430)),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text(
                                "Username",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              height: 50,
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: Color.fromARGB(255, 224, 222, 222),
                                  filled: true,
                                  hintText: "akash7699@",
                                  suffixIcon: Icon(
                                    Icons.input,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text(
                                "Full Name",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              height: 50,
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: Color.fromARGB(255, 224, 222, 222),
                                  filled: true,
                                  hintText: "Akash Tripathi",
                                  suffixIcon: Icon(
                                    Icons.input,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text(
                                "Email id",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 63),
                              height: 50,
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: Color.fromARGB(255, 224, 222, 222),
                                  filled: true,
                                  hintText: "writetoakashtripathi@gmail.com",
                                  suffixIcon: Icon(
                                    Icons.input,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(
                      left: 70,
                    ),
                    child: Text(
                      "Notification Settings",
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                  Container(
                      height: 0.70,
                      width: 400,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(top: 7, right: 430)),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text("New Message Notification"),
                            ),
                            AnimatedContainer(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(
                                left: 345,
                              ),
                              duration: Duration(milliseconds: 500),
                              height: 25.0,
                              width: 55.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  // color: toggleValue ? Colors.greenAccent[100]: Colors.redAccent[100]
                                  color: Color.fromARGB(255, 5, 44, 75)),
                              child: Stack(
                                children: <Widget>[
                                  AnimatedPositioned(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                    top: 0.0,
                                    left: toggleValue ? 0.0 : 30.0,
                                    right: toggleValue ? 30.0 : 0.0,
                                    child: InkWell(
                                      onTap: ToggleButton,
                                      child: AnimatedSwitcher(
                                          duration:
                                              Duration(milliseconds: 1000),
                                          transitionBuilder: (Widget child,
                                              Animation<double> animation) {
                                            return RotationTransition(
                                                child: child, turns: animation);
                                          },
                                          child: toggleValue
                                              ? Icon(Icons.circle,
                                                  color: Colors.grey,
                                                  size: 25.0,
                                                  key: UniqueKey())
                                              : Icon(Icons.circle,
                                                  color: Color.fromARGB(
                                                      255, 122, 235, 223),
                                                  size: 25.0,
                                                  key: UniqueKey())),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text("New Request Notification"),
                            ),
                            AnimatedContainer(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(
                                left: 350,
                              ),
                              duration: Duration(milliseconds: 500),
                              height: 25.0,
                              width: 55.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  // color: toggleValue ? Colors.greenAccent[100]: Colors.redAccent[100]
                                  color: Color.fromARGB(255, 5, 44, 75)),
                              child: Stack(
                                children: <Widget>[
                                  AnimatedPositioned(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                    top: 0.0,
                                    left: newtoggleValue ? 30.0 : 0.0,
                                    right: newtoggleValue ? 0.0 : 30.0,
                                    child: InkWell(
                                      onTap: newToggleButton,
                                      child: AnimatedSwitcher(
                                          duration:
                                              Duration(milliseconds: 1000),
                                          transitionBuilder: (Widget child,
                                              Animation<double> animation) {
                                            return RotationTransition(
                                                child: child, turns: animation);
                                          },
                                          child: newtoggleValue
                                              ? Icon(Icons.circle,
                                                  color: Color.fromARGB(
                                                      255, 122, 235, 223),
                                                  size: 25.0,
                                                  key: UniqueKey())
                                              : Icon(Icons.circle,
                                                  color: Colors.grey,
                                                  size: 25.0,
                                                  key: UniqueKey())),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(
                      top: 40.0,
                      left: 70,
                    ),
                    child: Text(
                      "Password and Security",
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                  Container(
                      height: 0.70,
                      width: 400,
                      color: Colors.grey,
                      margin: const EdgeInsets.only(top: 7, right: 430)),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text(
                                "Current password",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 33),
                              height: 35,
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: Color.fromARGB(255, 224, 222, 222),
                                  filled: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text(
                                "New Password",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 48,
                              ),
                              height: 35,
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: Color.fromARGB(255, 224, 222, 222),
                                  filled: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  70, 0, 0, 0),
                              child: Text(
                                "Confirm Password",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 25, horizontal: 25),
                              height: 35,
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  fillColor: Color.fromARGB(255, 224, 222, 222),
                                  filled: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    color: Color.fromARGB(255, 28, 240, 218),
                    child: RaisedButton(
                      child: const Text("Submit",
                          style: TextStyle(color: Colors.white)),
                      onPressed: null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ToggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }

  newToggleButton() {
    setState(() {
      newtoggleValue = !newtoggleValue;
    });
  }

  Widget sideBarItem(
    IconData icon,
    String name,
  ) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
      // color: Colors.indigo,
      child: Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 15.0,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
            Container(
                child: Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold))),
          ]),
    );
  }
}

// Container(
//                height: 1.0,
//                width: 150.0,
//                color: Colors.grey,
//              )

//  Container(
//                 height: 50.0,
//                 width: 150.0,
//                 decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40.0)),
//                 child: Center(child: Text("Admin Set Up"),)
//               )
