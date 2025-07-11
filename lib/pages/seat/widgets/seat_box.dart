import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  SeatBox(this.selectedRow, this.selectedCol, this.onSelected);
  String? selectedRow;
  int? selectedCol;
  void Function(String row, int col) onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        seatABC(),
        seat(1),
        seat(2),
        seat(3),
        seat(4),
        seat(5),
        seat(6),
        seat(7),
        seat(8),
        seat(9),
        seat(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            lable("Abailable", Colors.grey[300]!),
            lable("Selected", Colors.purple)
          ],
        )
      ],
    );
  }

  // 좌석 행
  Widget seatABC() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        seatAbcd("A"),
        seatAbcd("B"),
        seatAbcd(" "),
        seatAbcd("C"),
        seatAbcd("D"),
      ],
    );
  }

  // 좌석 행 디자인
  Widget seatAbcd(String rowName) {
    return SizedBox.square(
      dimension: 50,
      child: Center(
        child: Text(
          "$rowName",
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget lable(String text, Color color) {
    return Row(
      children: [
        Text("$text"),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
        )
      ],
    );
  }

  // 좌석 가로 한줄
  Widget seat(int rowName) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            seatBox("A", rowName),
            const SizedBox(width: 4),
            seatBox("B", rowName),
            numBox("1"),
            seatBox("C", rowName),
            const SizedBox(width: 4),
            seatBox("D", rowName),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget numBox(String rowName) {
    return Column(
      children: [
        SizedBox.square(
          dimension: 50,
          child: Center(
            child: Text("$rowName"),
          ),
        ),
      ],
    );
  }

  // 좌석 박스 디자인
  Widget seatBox(String rowName, int colNum) {
    return GestureDetector(
      onTap: () {
        onSelected(rowName, colNum);
      },
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: rowName == selectedRow && colNum == selectedCol
                ? Colors.purple
                : Colors.grey[300]!,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
