import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndx = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndx,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndx = value;
        });
      },
      children: [
        NavigationDrawerDestination(
          icon: const Icon(Icons.add), 
          label: const Text('Home Screen')
        ),

        NavigationDrawerDestination(
          icon: const Icon(Icons.add), 
          label: const Text('Home Screen')
        )
      ]
    );
  }
}