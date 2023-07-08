import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:uiassignment/ui_implement/devices.dart';
import 'package:uiassignment/ui_implement/temperature.dart';
// import 'package:getwidget/getwidget.dart';

class SmartDevicesScreen extends StatefulWidget {
  const SmartDevicesScreen({super.key});

  @override
  State<SmartDevicesScreen> createState() => _SmartDevicesScreenState();
}

class _SmartDevicesScreenState extends State<SmartDevicesScreen> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: [
            ListTile(
              title: Text("Temprature"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TemperatureScreen()),
                );
              },
            ),
            ListTile(
              title: Text("Devices"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DeviceScreen()),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.dashboard_sharp,
                color: Colors.black,
                size: 22,
              ),
            );
          },
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: CircleAvatar(
              backgroundImage: AssetImage('/profile_photo.jpg'),
              radius: 16,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Welcome Home",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Garret Reynolds",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      // GFAvatar(
                      //   backgroundImage: AssetImage("/home.png"),
                      //   shape: GFAvatarShape.square,
                      //   backgroundColor: Colors.transparent,
                      //   radius: 70,
                      // ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     GFAvatar(
                  //       backgroundImage: AssetImage("/home.png"),
                  //       shape: GFAvatarShape.square,
                  //       backgroundColor: Colors.transparent,
                  //       radius: 80,
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Smart Devices",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 204, 210, 211),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.alarm_add_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Smart",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Light",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            // alignment: Alignment.topRight,
                            // padding: EdgeInsets.only(left: 10),
                            child: FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              value: isToggled,
                              toggleColor: Colors.black,
                              activeColor: Colors.white,
                              onToggle: (value) {
                                setState(() {
                                  isToggled = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 204, 210, 211),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.broadcast_on_personal_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Smart",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "AC",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            child: FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              value: isToggled,
                              toggleColor: Colors.black,
                              activeColor: Colors.white,
                              onToggle: (value) {
                                setState(() {
                                  isToggled = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 204, 210, 211),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.airplay_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Smart",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "TV",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            child: FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              value: isToggled,
                              toggleColor: Colors.black,
                              activeColor: Colors.white,
                              onToggle: (value) {
                                setState(() {
                                  isToggled = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 204, 210, 211),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.credit_card_rounded,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Smart",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "AC",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            child: FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              value: isToggled,
                              toggleColor: Colors.black,
                              activeColor: Colors.white,
                              onToggle: (value) {
                                setState(() {
                                  isToggled = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
