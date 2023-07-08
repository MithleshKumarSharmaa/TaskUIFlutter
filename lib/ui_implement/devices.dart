import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:uiassignment/ui_implement/smart_devices.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SmartDevicesScreen()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Devices",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    FlutterSwitch(
                      height: 20.0,
                      width: 40.0,
                      padding: 3.0,
                      toggleSize: 15.0,
                      borderRadius: 10.0,
                      // showOnOff: true,
                      value: isToggled,
                      toggleColor: Colors.white,
                      activeColor: Colors.black,
                      onToggle: (value) {
                        setState(() {
                          isToggled = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Connected",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.network_wifi_outlined),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Connected',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Smart TV',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                FlutterSwitch(
                  height: 20.0,
                  width: 40.0,
                  padding: 3.0,
                  toggleSize: 15.0,
                  borderRadius: 10.0,
                  // showOnOff: true,
                  value: isToggled,
                  toggleColor: Colors.white,
                  activeColor: Colors.black,
                  onToggle: (value) {
                    setState(() {
                      isToggled = value;
                    });
                  },
                ),
              ],
            ),
          ),
          TextField(),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.airplay_outlined),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Not Connected',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Smart TV',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                FlutterSwitch(
                  height: 20.0,
                  width: 40.0,
                  padding: 3.0,
                  toggleSize: 15.0,
                  borderRadius: 10.0,
                  // showOnOff: true,
                  value: isToggled,
                  toggleColor: Colors.white,
                  activeColor: Colors.black,
                  onToggle: (value) {
                    setState(() {
                      isToggled = value;
                    });
                  },
                ),
              ],
            ),
          ),
          TextField(),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.access_alarms_rounded),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Not Connected',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Smart light',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                FlutterSwitch(
                  height: 20.0,
                  width: 40.0,
                  padding: 3.0,
                  toggleSize: 15.0,
                  borderRadius: 10.0,
                  // showOnOff: true,
                  value: isToggled,
                  toggleColor: Colors.white,
                  activeColor: Colors.black,
                  onToggle: (value) {
                    setState(() {
                      isToggled = value;
                    });
                  },
                ),
              ],
            ),
          ),
          TextField(),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.add_card_rounded),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Not Connected',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Smart AC',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                FlutterSwitch(
                  height: 20.0,
                  width: 40.0,
                  padding: 3.0,
                  toggleSize: 15.0,
                  borderRadius: 10.0,
                  // showOnOff: true,
                  value: isToggled,
                  toggleColor: Colors.white,
                  activeColor: Colors.black,
                  onToggle: (value) {
                    setState(() {
                      isToggled = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
