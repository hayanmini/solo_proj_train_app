import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/widgets/station_list.dart';

class StationListPage extends StatelessWidget {
  final bool isStart;

  StationListPage(this.isStart, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedStartEnd(isStart ? "출발역" : "도착역"),
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