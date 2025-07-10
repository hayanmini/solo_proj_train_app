import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        seatABC(),
        Row(
          children: [
            seatBox(false),
            seatBox(false),
            Text("1"),
            seatBox(false),
            seatBox(false),
          ],
        ),
      ],
    );
  }

  // 좌석 행
  Row seatABC() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        seatA("A"),
        seatA("B"),
        seatA(" "),
        seatA("C"),
        seatA("D"),
      ],
    );
  }

  // 좌석 행 디자인
  SizedBox seatA(String abc) {
    return SizedBox.square(
      dimension: 50,
      child: Center(
        child: Text(
          "$abc",
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  // 좌석 박스 디자인
  Container seatBox(selectSeet) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: selectSeet ? Colors.purple : Colors.grey[300]!,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
