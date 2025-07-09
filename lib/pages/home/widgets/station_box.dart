import 'package:flutter/material.dart';

class StationBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          whereStation("출발역", "선택"),
          Container(
            width: 2,
            height: 50,
            color: Colors.grey[400],
          ),
          whereStation("도착역", "선택"),
        ],
      ),
    );
  }

  // 텍스트 클래스 분리
  Column whereStation(String startEnd, String StationName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          startEnd,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          StationName,
          style: const TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}
