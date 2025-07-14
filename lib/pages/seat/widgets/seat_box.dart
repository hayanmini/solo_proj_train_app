import 'package:flutter/material.dart';

class SeatBox extends StatelessWidget {
  SeatBox(this.selectedRow, this.selectedCol, this.onSelected);

  String? selectedRow;
  int? selectedCol;
  Function(String rowName, int colNum) onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        seatABC(),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
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
              seat(11),
              seat(12),
              seat(13),
              seat(14),
              seat(15),
              seat(16),
              seat(17),
              seat(18),
              seat(19),
              seat(20),
            ],
          ),
        ),
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
  Widget seatAbcd(rowName) {
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

// 좌석 가로 한줄
  Widget seat(colNum) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            seatBox("A", colNum),
            const SizedBox(width: 4),
            seatBox("B", colNum),
            numBox(colNum),
            seatBox("C", colNum),
            const SizedBox(width: 4),
            seatBox("D", colNum),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget numBox(colNum) {
    return Column(
      children: [
        SizedBox.square(
          dimension: 50,
          child: Center(
            child: Text("$colNum"),
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
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: selectedRow == rowName && selectedCol == colNum
              ? Colors.purple
              : Colors.grey[300]!,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
