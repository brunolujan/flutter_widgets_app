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
    icon: Icons.analytics_rounded
  ),

  MenuItem(
    title: 'Progress Indicators', 
    subTitle: 'Generals and controlled', 
    link: '/progress', 
    icon: Icons.replay_circle_filled_outlined
  ),

  MenuItem(
    title: 'Snack Bars and Dialog Window', 
    subTitle: 'Indicators on screen', 
    link: '/snackbars', 
    icon: Icons.info_rounded
  ),

  MenuItem(
    title: 'Animated Container', 
    subTitle: 'Animated stateful widget', 
    link: '/animated', 
    icon: Icons.animation_rounded
  ),

  MenuItem(
    title: 'UI Controls + Tiles', 
    subTitle: 'A series of controls in Flutter', 
    link: '/ui-controls', 
    icon: Icons.view_comfortable_rounded
  ),

  MenuItem(
    title: 'Application Introduction', 
    subTitle: 'This is how you have to use my app', 
    link: '/app-tutorial', 
    icon: Icons.phone_iphone_rounded
  ),
  
  MenuItem(
    title: 'Infinite Scroll and Pull', 
    subTitle: 'Infinite list and pull to refresh', 
    link: '/infinite-scroll', 
    icon: Icons.fingerprint_rounded
  ),
];