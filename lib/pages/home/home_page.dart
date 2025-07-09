import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/widgets/seat_select_botton.dart';
import 'package:flutter_train_app/pages/home/widgets/station_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("기차 예매"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationBox(),
            const SizedBox(height: 20),
            SeatSelectBotton(),
          ],
        ),
      ),
    );
  }
}
