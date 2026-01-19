import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class MainNavs extends StatelessWidget {
  const MainNavs({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: navigationShell,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(Icons.chat_bubble, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        selectedFontSize: 15,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png', width: 25, height: 25),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/doctors.png',
              width: 25,
              height: 25,
            ),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/services.png',
              width: 25,
              height: 25,
            ),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/activities.png',
              width: 25,
              height: 25,
            ),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/settings.png',
              width: 25,
              height: 25,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
