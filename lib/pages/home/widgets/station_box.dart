import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/station_list_page.dart';

class StationBox extends StatelessWidget {
  String startStation;
  String endStation;
  Function(bool isStart, String station) station;

  StationBox(this.startStation, this.endStation, this.station);

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
          whereStation(context, true, startStation),
          Container(
            width: 2,
            height: 50,
            color: Colors.grey[400],
          ),
          whereStation(context, false, endStation),
        ],
      ),
    );
  }

  // 텍스트 클래스 분리
  Widget whereStation(BuildContext context, bool isStart, String StationName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return StationListPage(isStart, (station) {
                this.station(isStart, station);
              });
            },
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isStart ? "출발역" : "도착역",
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
      ),
    );
  }
}
