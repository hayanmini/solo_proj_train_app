import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home/home_page.dart';

class BookNowBotton extends StatelessWidget {
  String rowName;
  int colNum;

  BookNowBotton(this.rowName, this.colNum);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          // 버튼 상호작용
          onPressed: (rowName != "" && colNum != 0)
              ? () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("예약 하시겠습니까?"),
                        content: Text("좌석 : $rowName - $colNum"),
                        actions: [
                          cancelBotton(context),
                          checkBotton(context),
                        ],
                      );
                    },
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
            "예매 하기",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  // 확인 버튼
  Widget checkBotton(BuildContext context) {
    return CupertinoDialogAction(
      isDestructiveAction: false,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      },
      child: const Text("확인"),
    );
  }

  // 취소 버튼
  Widget cancelBotton(BuildContext context) {
    return CupertinoDialogAction(
      isDestructiveAction: true,
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text("취소"),
    );
  }
}
