import 'dart:async';

import 'package:flutter/material.dart';

import '../app/theme/app_pallete.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final countingDown =
    TextStyle(fontSize: mediaQuery.size.width / 30, color: AppPallete.blue);
    final timeTextStyle = TextStyle(
        fontSize: mediaQuery.size.width / 55, color: AppPallete.black4);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
//                                '30 : ',
              '${DateTime(2023, 5, 3).difference(DateTime.now()).inDays} : ',
              style: countingDown,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'дней',
              style: timeTextStyle,
            ),
          ],
        ),
        Column(
          children: [
            Text(
//                                '8 : ',
              '${23 - DateTime.now().hour} : ',
              style: countingDown,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'часов ',
              style: timeTextStyle,
            ),
          ],
        ),
        Column(
          children: [
            Text(
//                                '44 : ',
              '${59 - DateTime.now().minute} : ',
              style: countingDown,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'минут',
              style: timeTextStyle,
            ),
          ],
        ),
        Column(
          children: [
            Text(
//                                '18',
              (59 - DateTime.now().second).toString(),
              style: countingDown,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'секунд',
              style: timeTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
