import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: body()
    );
  }

  AppBar appBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: const Text("Settings",
        style: TextStyle(
          color: Colors.black
        ))
    );
  }

  Widget body(){
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          MaterialButton(
            minWidth: double.infinity,
            child: const Text("Language"),
            color: Colors.blueGrey.shade100,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            onPressed: (){},
          ),

          MaterialButton(
            minWidth: double.infinity,
            child: const Text("Theme"),
            color: Colors.blueGrey.shade100,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            onPressed: (){},
          ),
        ]
      ),
    );
  }
}