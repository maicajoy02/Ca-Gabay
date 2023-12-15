import 'package:flutter/material.dart';
import '../../Contants/constants.dart';
import '../DrawerPages/dashboards_page.dart';
import '../DrawerPages/reports_page.dart';
import '../DrawerPages/settings_page.dart';
import 'Models/navigation_model.dart';
import 'navigation_list_tile.dart';

class CollapsibleNavigationDrawer extends StatefulWidget {
  const CollapsibleNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<CollapsibleNavigationDrawer> createState() =>
      _CollapsibleNavigationDrawerState();
}

class _CollapsibleNavigationDrawerState
    extends State<CollapsibleNavigationDrawer> {
  bool showDashboards = false;
  bool showReports = false;
  bool showSettings = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 250.0,
          color: cgBlue,
          child: Column(
            children: <Widget>[
              SizedBox(height: 50.0),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, counter) {
                    return ListTile(
                      title: GestureDetector(
                        onTap: () {
                          // Use a switch or if-else statements to determine the page based on the title
                          switch (navigationItems[counter].title) {
                            case 'Dashboards':
                              setState(() {
                                showDashboards = !showDashboards;
                                showReports = false;
                                showSettings = false;
                              });
                              break;
                            case 'Reports':
                              setState(() {
                                showReports = !showReports;
                                showDashboards = false;
                                showSettings = false;
                              });
                              break;
                            case 'Settings':
                              setState(() {
                                showSettings = !showSettings;
                                showDashboards = false;
                                showReports = false;
                              });
                              break;
                          }
                        },
                        child: NavigationListTile(
                          title: navigationItems[counter].title,
                          icon: navigationItems[counter].icon,
                        ),
                      ),
                    );
                  },
                  itemCount: navigationItems.length,
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     setState(() {
              //
              //     });
              //   },
              //   child: Icon(
              //     Icons.chevron_left,
              //     color: cgWhite,
              //     size: 30.0,
              //   ),
              // ),
              // SizedBox(height: 400.0),
            ],
          ),
        ),
        if (showDashboards)
          cgDashboardsPage,
        if (showReports)
          ReportsPage(),
        if (showSettings)
          cgSettingsPage,
      ],
    );
  }
}
