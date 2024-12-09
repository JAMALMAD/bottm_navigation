import 'package:bottom_navigation/controller/navigation_controller.dart';
import 'package:bottom_navigation/new_screen.dart';
import 'package:bottom_navigation/profile.dart';
import 'package:bottom_navigation/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NavigatinPage extends StatelessWidget {
  final BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());

  NavigatinPage({super.key});

  final screen = [
    SettingPage(),
    NewScreen(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: bottomNavigationController.selectedIndex.value,
        children: screen,
      )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (index) {
          bottomNavigationController.changeIndex(index);
        },
        currentIndex: bottomNavigationController.selectedIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: "Home",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: "Profile",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.black,
          ),
        ],
      )),
    );
  }
}
