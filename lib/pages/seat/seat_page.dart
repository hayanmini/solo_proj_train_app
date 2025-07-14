import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/book_now_botton.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_box.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_select_ex.dart';
import 'package:flutter_train_app/pages/seat/widgets/selected_station.dart';

class SeatPage extends StatefulWidget {
  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("좌석 선택"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SelectedStation(),
          SeatSelectEx(),
          SeatBox(),
          BookNowBotton(),
        ],
      ),
    );
  }
}
