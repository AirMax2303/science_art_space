import 'package:flutter/material.dart';
import 'package:science_art_space/pages/form/views/sections_view.dart';

import '../../../app/theme/app_pallete.dart';
import '../../../model/candidate_model.dart';
import '../../../model/models.dart';
import '../widgets/AgeButtonWidget.dart';

class AgeView extends StatelessWidget {
  AgeView({Key? key}) : super(key: key);
  Candidate candidate = Candidate(
    id: '',
    name: '',
    surname: '',
    patronymic: '',
    ageCategory: '',
    job: '',
    email: '',
    section: '',
    phoneNumber: '',
    leadership: '',
    insertDate: '',
    description: '',
    updateDate: '',
    filename: '',
  );

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16.0, bottom: 10.0, top: 5.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppPallete.blue,
                  ),
                  Text(
                    'На главную',
                    style: TextStyle(
                      color: AppPallete.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Divider(
              //  thickness: MediaQuery.of(context).size.width / 300,
              //  height: MediaQuery.of(context).size.width / 300,
              //  color: Colors.black87,
              //),
              SizedBox(height: mediaQuery.size.width / 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ageButton(context, age_categoryes_min[0], () {
                    candidate.ageCategory = age_categoryes_min[0];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SectionsView(candidate: candidate)),
                    );
                  }, mediaQuery, false),
                  SizedBox(width: mediaQuery.size.width / 15),
                  ageButton(context, age_categoryes_min[1], () {
                    candidate.ageCategory = age_categoryes_min[1];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SectionsView(candidate: candidate)),
                    );
                  }, mediaQuery, false),
                  SizedBox(width: mediaQuery.size.width / 15),
                  ageButton(context, age_categoryes_min[2], () {
                    candidate.ageCategory = age_categoryes_min[2];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SectionsView(candidate: candidate)),
                    );
                  }, mediaQuery, false),
                ],
              ),
              SizedBox(height: mediaQuery.size.width / 15),
              Divider(
                thickness: MediaQuery.of(context).size.width / 300,
                height: MediaQuery.of(context).size.width / 300,
                color: Colors.black87,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
