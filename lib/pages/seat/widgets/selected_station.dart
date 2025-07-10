import 'package:flutter/material.dart';

class SelectedStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        selectedStationText("수서"),
        const Icon(
          Icons.arrow_circle_right_outlined,
          size: 30,
        ),
        selectedStationText("부산"),
      ],
    );
  }

  // 선택된 역명
  Text selectedStationText(String selectedText) {
    return Text(
      "$selectedText",
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.purple,
        fontSize: 30,
      ),
    );
  }
}
