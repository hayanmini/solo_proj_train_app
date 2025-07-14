import 'package:flutter/material.dart';

class SelectedStation extends StatelessWidget {
  String startStation;
  String endStation;

  SelectedStation(this.startStation, this.endStation);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        selectedStationText("$startStation"),
        const Icon(
          Icons.arrow_circle_right_outlined,
          size: 30,
        ),
        selectedStationText("$endStation"),
      ],
    );
  }

  // 선택된 역명
  Text selectedStationText(String selectedStation) {
    return Text(
      "$selectedStation",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 30,
      ),
    );
  }
}
