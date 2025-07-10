import 'package:flutter/material.dart';

class SeatSelectEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        selectExBox(true),
        const SizedBox(width: 4),
        Text("선택됨"),
        const SizedBox(width: 20),
        selectExBox(false),
        const SizedBox(width: 4),
        Text("선택안됨"),
      ],
    );
  }

  // 좌석 선택 여부
  Container selectExBox(bool selectSeet) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: selectSeet ? Colors.purple : Colors.grey[300]!,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
