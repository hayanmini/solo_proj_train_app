import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/widgets/station_list.dart';

class StationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedStartEnd("출발역"),
      body: StationList(),
    );
  }

  AppBar selectedStartEnd(String startEnd) {
    return AppBar(
      title: Text(startEnd),
      centerTitle: true,
    );
  }
}

// class StardEnd (String)