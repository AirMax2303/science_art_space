import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'statude.dart';
import 'form_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final simpleText = TextStyle(fontSize: mediaQuery.size.width / 60);
    Widget TextB(String text) {
      return Align(
        alignment: Alignment.bottomLeft,
        child:
            Text(text, style: simpleText.copyWith(fontWeight: FontWeight.bold)),
      );
    }

    Widget TextS(String text) {
      return Align(
        alignment: Alignment.bottomLeft,
        child: Text(text, style: simpleText),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          const HtmlWidget(html),
          TextB(
              'Организаторы ФГБОУ ВО «Кубанский государственный университет»:'),
          TextS('Кафедра ДПИ и дизайна художественно-графического факультета;'),
          TextS(
              'Кафедра анализа данных и искусственного интеллекта факультета компьютерных технологий и прикладной математики;'),
          TextS(
              'Кафедра истории и правового регулирования массовых коммуникаций факультета журналистики;'),
          TextS(
              'МУ ДО «Детская художественная школа» им.В.А.Филиппова муниципального образования город Краснодар'),
          TextB(
              'Главный технический партнёр выставки-конкурса: ARTEЛЬ DIGITAL'),
          TextB(
              'Выставочная экспозиция будет транслироваться на интерактивном мультимедийном оборудовании компании ARTEЛЬ DIGITAL'),
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
