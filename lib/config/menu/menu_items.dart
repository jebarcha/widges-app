
import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem ({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon});
}

const appMenuItems = <MenuItem>[

   MenuItem(
      title: 'Riverpod Counter', 
      subTitle: 'Introfuction to Riverpod', 
      link: '/counter-river', 
      icon: Icons.add
  ),
  
  MenuItem(
      title: 'Buttons', 
      subTitle: 'Multiple buttons in Flutter', 
      link: '/buttons', 
      icon: Icons.smart_button_outlined
  ),

  MenuItem(
      title: 'Cards', 
      subTitle: 'Contaier styled', 
      link: '/cards', 
      icon: Icons.credit_card
  ),

  MenuItem(
      title: 'Progress Indicators', 
      subTitle: 'Generals and controlled', 
      link: '/progress', 
      icon: Icons.refresh_rounded
  ),

  MenuItem(
      title: 'Snackbar and Dialogs', 
      subTitle: 'Screen indicators', 
      link: '/snackbars', 
      icon: Icons.info_outline
  ),

  MenuItem(
      title: 'Animated container', 
      subTitle: 'Stateful widget animated', 
      link: '/animated', 
      icon: Icons.check_box_outline_blank_rounded
  ),

  MenuItem(
      title: 'UI Controls + Tiles', 
      subTitle: 'Several Controls of Flutter', 
      link: '/ui-controls', 
      icon: Icons.car_rental_outlined
  ),

  MenuItem(
      title: 'Introduction to the application', 
      subTitle: 'Small tutorial of the application', 
      link: '/tutorial', 
      icon: Icons.accessible_rounded
  ),

  MenuItem(
      title: 'InfiniteScroll and Pull', 
      subTitle: 'infinite list and pull to refresh', 
      link: '/infinite', 
      icon: Icons.list_alt_rounded
  ),

  MenuItem(
      title: 'Change Theme', 
      subTitle: 'Change Theme of the app', 
      link: '/theme_changer', 
      icon: Icons.color_lens_outlined
  ),


];