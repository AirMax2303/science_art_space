import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../widgets/timer_widget.dart';
import 'statude.dart';
import 'form_page.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final simpleText = TextStyle(fontSize: mediaQuery.size.width / 60);


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          const HtmlWidget(html),
          TimerWidget(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FormPage()),
              );
            },
            child: Container(
              height: mediaQuery.size.width / 15,
              width: mediaQuery.size.width / 4,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                'Подать заявку',
                style: TextStyle(
                    fontSize: mediaQuery.size.width / 45, color: Colors.white),
              )),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
