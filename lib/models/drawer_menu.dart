import 'package:flutter/material.dart';

class DrawerMenu {
  final Icon leadingIcon;
  final String title;
  final String route;

  DrawerMenu(this.leadingIcon, this.title, this.route);
}

var drawerMenu = [
  DrawerMenu(Icon(Icons.home), 'Home', 'app'),
  DrawerMenu(Icon(Icons.phone), 'Contact', 'contact'),
  DrawerMenu(Icon(Icons.add), 'Add Page', 'newPage'),
];