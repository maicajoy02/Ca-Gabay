import 'package:ca_gabay/Contants/constants.dart';
import 'package:flutter/material.dart';

import 'CollapsibleDrawer/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: cgBlue),
          backgroundColor: cgWhite,
          actions: [
            Row(
              children: [
                SizedBox(width: 10.0),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/sample_avatar.png'),
                ),
                SizedBox(width: 5.0),
                GestureDetector(
                  onTap: () {
                    // Show options when the username is clicked
                    showOptions(context);
                  },
                  child: Row(
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          color: cgBlack,
                        ),
                      ),
                      Icon(Icons.arrow_drop_down, color: cgBlack),
                    ],
                  ),
                ),
                SizedBox(width: 40.0),
              ],
            ),
          ],
        ),
        // drawer: CollapsibleNavigationDrawer(),
        body: SafeArea(
          child: Container(
            color: cgBGColor,
            child: CollapsibleNavigationDrawer(),
          ),
        ),
        // drawer: CollapsibleNavigationDrawer(),
      ),
    );
  }


}


