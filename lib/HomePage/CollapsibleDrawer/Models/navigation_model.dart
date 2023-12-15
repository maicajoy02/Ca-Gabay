import 'package:flutter/material.dart';

class NavigationModel {
  late String title;
  late IconData icon;

  NavigationModel({required this.title, required this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Dashboards", icon: Icons.dashboard),
  NavigationModel(title: "Reports", icon: Icons.insert_chart),
  NavigationModel(title: "Settings", icon: Icons.settings),
];