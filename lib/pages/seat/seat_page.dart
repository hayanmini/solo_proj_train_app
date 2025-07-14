import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/book_now_botton.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_box.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_select_ex.dart';
import 'package:flutter_train_app/pages/seat/widgets/selected_station.dart';

class SeatPage extends StatefulWidget {
  String startStation;
  String endStation;

  SeatPage(this.startStation, this.endStation);

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  String rowName = "";
  int colNum = 0;

  void onSelected(String selectedRow, int selectedCol) {
    rowName = selectedRow;
    colNum = selectedCol;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("좌석 선택"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SelectedStation(widget.startStation, widget.endStation),
          SeatSelectEx(),
          Expanded(child: SeatBox(rowName, colNum, onSelected)),
          BookNowBotton(rowName, colNum),
        ],
      ),
    );
  }
}
