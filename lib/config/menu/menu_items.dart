import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });  
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons', 
    subTitle: 'Many buttons in Flutter', 
    link: '/buttons', 
    icon: Icons.arrow_drop_down_circle_sharp
  ),

    MenuItem(
    title: 'Cards', 
    subTitle: 'A stylized container', 
    link: '/cards', 
    icon: Icons.aspect_ratio_rounded
  ),

    MenuItem(
    title: 'Progress Indicator', 
    subTitle: 'Generals and controlled', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
];