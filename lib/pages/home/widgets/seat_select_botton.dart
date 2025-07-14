import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';

class SeatSelectBotton extends StatelessWidget {
  String startStation;
  String endStation;

  SeatSelectBotton(this.startStation, this.endStation);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        // 페이지 이동
        onPressed: (startStation != "선택" && endStation != "선택")
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SeatPage(startStation, endStation);
                    },
                  ),
                );
              }
            : null,
        // 버튼 디자인
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        // 텍스트 디자인
        child: const Text(
          "좌석 선택",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
