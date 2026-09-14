import 'package:flutter/material.dart';


class Activity {

  // modelo para mantener la informacion de la app

  final String title;
  final String subtitle;
  final String trailing;
  final IconData icon;
  final Color iconColor;



  Activity({required this.title, required this.subtitle, required this.trailing, required this.icon, required this.iconColor});

}