import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../app/theme/app_pallete.dart';
import '../widgets/header_widget.dart';
import '../widgets/timer_widget.dart';
import 'package:video_player/video_player.dart';
import 'statude.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/space2.mp4');

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final headTextStyle = TextStyle(fontSize: mediaQuery.size.width / 40);
    final countingDown =
        TextStyle(fontSize: mediaQuery.size.width / 30, color: AppPallete.blue);
    final timeTextStyle = TextStyle(
        fontSize: mediaQuery.size.width / 55, color: AppPallete.black4);
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
                child: Column(
                  children: [
                    //Container(height: 900,width: MediaQuery.of(context).size.width, child: VideoPlayer(_controller)),
                    //Text('${constraints.maxHeight} | ${constraints.maxWidth}'),
                    Center(
                      child: SizedBox(
                          height: constraints.maxWidth / 1.78,
                          width: constraints.maxWidth,
                          child: VideoPlayer(_controller)),
                    ),
                    //const SizedBox(height: 10),
                    //Text('${constraints.maxHeight} | ${constraints.maxWidth}'),
                    SizedBox(height: mediaQuery.size.width / 25),
                    const HeaderWidget(),
                    SizedBox(height: mediaQuery.size.width / 15),
                    Text(
                      'III МЕЖДУНАРОДНАЯ НАУЧНО-ИССЛЕДОВАТЕЛЬКАЯ ВЫСТАВКА-КОНКУРС ИСКУССТВО И НАУКА: КОСМОС',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 30,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: mediaQuery.size.width / 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: AppPallete.black10,
                            height: MediaQuery.of(context).size.width / 300,
                            width: MediaQuery.of(context).size.width / 3.4,
                          ),
                          const SizedBox(width: 30),
                          Text(
                            'СИНТЕЗ  НАУКИ И ИСКУССТВА',
                            style: headTextStyle,
                          ),
                          const SizedBox(width: 30),
                          Container(
                            color: AppPallete.black10,
                            height: MediaQuery.of(context).size.width / 300,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ],
                      ),
                    ),
                    const TimerWidget(),
                    Divider(
                      thickness: MediaQuery.of(context).size.width / 300,
                      height: MediaQuery.of(context).size.width / 300,
                      color: Colors.black87,
                    ),
                    SizedBox(height: mediaQuery.size.width / 15),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormPage()),
                        );
                      },
                      child: Container(
                        height: mediaQuery.size.width / 15,
                        width: mediaQuery.size.width / 4,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40)),
                          color: AppPallete.blue,
                        ),
                        child: Center(
                            child: Text(
                          'Подать заявку',
                          style: TextStyle(
                              fontSize: mediaQuery.size.width / 45,
                              color: Colors.white),
                        )),
                      ),
                    ),
                    SizedBox(height: mediaQuery.size.width / 15),
                    Divider(
                      thickness: MediaQuery.of(context).size.width / 300,
                      height: MediaQuery.of(context).size.width / 300,
                      color: Colors.black87,
                    ),
                    SizedBox(height: mediaQuery.size.width / 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: mediaQuery.size.width / 2,
                          child: Image.asset('assets/programs/afiha.jpg'),
                        ),
                        SizedBox(width: mediaQuery.size.width / 30),
                        SizedBox(
                          height: mediaQuery.size.width / 2,
                          child: Image.asset('assets/programs/prg.jpg'),
                        ),
                      ],
                    ),
                    SizedBox(height: mediaQuery.size.width / 15),
                    Divider(
                      thickness: MediaQuery.of(context).size.width / 300,
                      height: MediaQuery.of(context).size.width / 300,
                      color: Colors.black87,
                    ),
                    SizedBox(height: mediaQuery.size.width / 15),
                    Text('Участники', style: headTextStyle),
                    SizedBox(height: mediaQuery.size.width / 20),
                    //SvgPicture.asset('assets/image/22.png')
                    //Image.asset('assets/img.png'),
                    //Image(image: AssetImage('assets/img.png'));
                    //Image.asset('assets/experts/belpay.jpg'),

                    SizedBox(height: mediaQuery.size.width / 15),
                    Text(
                      'Подробно по выставке: Морозкина Елена Анатольевна',
                      style: TextStyle(
                          fontSize: mediaQuery.size.width / 60,
                          color: AppPallete.black4),
                    ),
                    Text(
                      '89002758888 morozkinaelena@mail.ru',
                      style: TextStyle(
                          fontSize: mediaQuery.size.width / 60,
                          color: AppPallete.black4),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2023',
                          style: TextStyle(
                              fontSize: mediaQuery.size.width / 60,
                              color: AppPallete.black4),
                        ),
                        GestureDetector(
                          onTap: () {
                            //Navigator.push(
                            //  context,
                            //  MaterialPageRoute(
                            //      builder: (context) => const AdminPage()),
                            //);
                          },
                          child: Text(
                            ' ©',
                            style: TextStyle(
                                fontSize: mediaQuery.size.width / 60,
                                color: AppPallete.black4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
    );
  }
}
