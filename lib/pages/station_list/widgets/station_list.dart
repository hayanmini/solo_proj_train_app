import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/home_page.dart';
import 'package:flutter_train_app/pages/seat/widgets/selected_station.dart';

class StationList extends StatefulWidget {
  String? select;
  Function(String station) selectedStation;

  StationList(this.select, this.selectedStation);

  @override
  State<StationList> createState() => _StationListState();
}

class _StationListState extends State<StationList> {
  @override
  Widget build(BuildContext context) {
    var stations = [
      "수서",
      "동탄",
      "평택지제",
      "천안아산",
      "오송",
      "대전",
      "김천구미",
      "동대구",
      "경주",
      "울산",
      "부산"
    ];
    var widgets = <Widget>[];
    for (var station in stations) {
      if (station != widget.select) widgets.add(stationName(station));
    }
    return Column(
      children: widgets,
    );
  }

  // 역 리스트
  Widget stationName(selectName) {
    return GestureDetector(
      onTap: () {
        widget.selectedStation(selectName);
        Navigator.pop(context);
      },
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[300]!,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "  $selectName",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
    );
  }
}
