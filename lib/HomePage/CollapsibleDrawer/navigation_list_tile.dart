import 'package:ca_gabay/Contants/constants.dart';
import 'package:flutter/material.dart';

class NavigationListTile extends StatefulWidget {

  final String title;
  final IconData icon;

  NavigationListTile({required this.title, required this.icon});

  @override
  State<NavigationListTile> createState() => _NavigationListTileState();
}

class _NavigationListTileState extends State<NavigationListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Icon(widget.icon, color: cgWhite, size: 35.0),
          SizedBox(width: 10.0),
          Text(widget.title, style: TextStyle(color: cgWhite, fontSize: 15.0),)
        ],
      ),
    );
  }
}
