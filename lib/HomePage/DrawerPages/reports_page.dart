import 'package:flutter/material.dart';
import 'package:ca_gabay/Contants/constants.dart';

class ReportsPage extends StatefulWidget {
  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  bool showSearchIcon = true;
  TextEditingController searchController = TextEditingController();
  List<String> allReports = [
    'CMRBI List of Reconciled Members Data',
    '01 Center for PAR',
    'All Savings Accounts - Compliance - Closed Accounts range',
    'ALL Savings Accounts RAW',
    'ALL Savings Accounts RAW with birthday',
  ];
  List<String> displayedReports = [];

  @override
  void initState() {
    super.initState();
    displayedReports = List.from(allReports);
  }

  void _filterReports(String query) {
    setState(() {
      displayedReports = allReports
          .where((report) => report.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(10.0),
        color: cgBGColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Search bar with icon
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    onChanged: _filterReports,
                    decoration: InputDecoration(
                      hintText: 'Search reports...',
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                      ),
                    ),
                  )
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      showSearchIcon = !showSearchIcon;
                    });
                    // You can add additional search logic here if needed
                  },
                ),
              ],
            ),
            SizedBox(height: 10.0), // Add some space between search bar and reports list

            // List of reports
            Expanded(
              child: ListView.builder(
                itemCount: displayedReports.length,
                itemBuilder: (context, index) {
                  return _buildClickableReportTile(displayedReports[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClickableReportTile(String reportTitle) {
    return ListTile(
      title: Text(reportTitle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.find_in_page_outlined),
            onPressed: () {
              // Handle the view button click
              print('Viewing $reportTitle');
              // Implement the logic for viewing the report
            },
          ),
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () {
              // Handle the download button click
              print('Downloading $reportTitle');
              // Implement the logic for downloading the report
            },
          ),
        ],
      ),
      onTap: () {
        // Handle the click event for each report
        print('Clicked on $reportTitle');
        // You can navigate to a new page, show details, etc.
      },
    );
  }
}
