import 'package:bottom_navigation/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({super.key});
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Obx(()=>
                Text("counter$controller]"),
            ),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            controller.counter.value;
          }, child: Text("Counter"))
        ],
      ),
    );
  }
}
