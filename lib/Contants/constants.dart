import 'package:flutter/material.dart';

//COLOR GUIDE
Color cgBGColor = Color(0xAED3D3D3);
Color cgRed = Color(0xFFEE0000);
Color cgBlue = Color(0xFF0000cc);
Color cgBlack = Colors.black54;
Color cgTransparent = Colors.transparent;
Color cgWhite = Colors.white;
//FOR COLLAPSIBLE DRAWER
Color cgDrawerSelected = Color(0xFF7D2626);

//EMAIL & PASSWORD form style
InputDecoration bLoginFormat = InputDecoration(
  errorStyle: TextStyle(
    color: cgRed,
    fontSize: 12.0,
    fontStyle: FontStyle.italic,
  ),
  labelText: 'Text',
  labelStyle: TextStyle(color: cgBlack),
  hintText: 'Text',
  hintStyle: TextStyle(color: cgBlack, fontStyle: FontStyle.italic),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: cgRed)),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: cgRed)),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: cgBlack)),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: cgBlack)),
);


//APPBAR PopupMenuButton
void showOptions(BuildContext context) {
  // Show options in a PopupMenuButton
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(50.0, 50.0, 0.0, 0.0),
    items: [
      PopupMenuItem<String>(
        value: 'Change Password',
        child: Text('Change Password'),
      ),
      PopupMenuItem<String>(
        value: 'Logout',
        child: Text('Logout'),
      ),
    ],
  );
}

