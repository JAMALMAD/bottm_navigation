import 'package:bottom_navigation/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingPage()),);
              }, child: Container(
                color: Colors.amber,
                height: 20,
                width: 40)),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Container(
                  color: Colors.amber,
                  height: 20,
                  width: 40)),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Container(
                  height: 20,
                  width: 40)),
            ],
          ),
        ),
      ),
    );
  }
}
