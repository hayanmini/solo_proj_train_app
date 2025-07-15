import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/widgets/station_list.dart';

class StationListPage extends StatelessWidget {
  final bool isStart;
  String selected;
  Function(String stationName) station;

  StationListPage(this.isStart, this.selected, this.station);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedStartEnd(isStart ? "출발역" : "도착역"),
      body: StationList(selected, (String station) {
        this.station(station);
      }),
    );
  }

  AppBar selectedStartEnd(String startEnd) {
    return AppBar(
      title: Text(startEnd),
      centerTitle: true,
    );
  }
}
