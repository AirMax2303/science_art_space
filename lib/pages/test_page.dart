import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:science_art_space/pages/home_page.dart';
import 'package:science_art_space/pages/partners_page.dart';
import 'package:science_art_space/pages/statute_page.dart';
import '../model/candidate_model.dart';
import '../repo/repositories.dart';
import 'experts_page.dart';
import 'organizers_page.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
//  CandidateRepository candidateRepository = CandidateRepository();

  Future<List<Candidate>> getList() async {
    String url = 'http://science-art.pro/test07.php';
    final Response response = await get(Uri.parse(url));
    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Candidate> candidates = items.map<Candidate>((json) {
      return Candidate.fromJson(json);
    }).toList();
    return candidates;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    //final simpleText = TextStyle(fontSize: mediaQuery.size.width / 60);
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<Candidate>>(
            future: getList(),
            builder: (context, snapshot)  {
              if (!snapshot.hasData) return const CircularProgressIndicator();
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                    MediaQuery.of(context).size.shortestSide < 600 ? 2 : 4,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('${snapshot.data?[index].ageCategory}'),
                            const SizedBox(width: 10,),
                            Text('${snapshot.data?[index].section}'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('${snapshot.data?[index].name}'),
                            const SizedBox(width: 10,),
                            Text('${snapshot.data?[index].surname}'),
                          ],
                        ),
                        Row(
                          children: [
                            Text('${snapshot.data?[index].insertDate}'),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: snapshot.data?.length,
              );
            }
        ),
      )
    );
  }
}
