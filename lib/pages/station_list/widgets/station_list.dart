import 'package:flutter/material.dart';

class StationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        stationName("수서"),
        stationName("동탄"),
        stationName("평택지제"),
        stationName("천안아산"),
        stationName("오송"),
        stationName("대전"),
        stationName("김천구미"),
        stationName("동대구"),
        stationName("경주"),
        stationName("울산"),
        stationName("부산"),
      ],
    );
  }

  // 역 리스트
  Widget stationName(selectName) {
    return GestureDetector(
      onTap: () {
        //? 정보를전달하고
        // 현재화면을 닫는다.
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
