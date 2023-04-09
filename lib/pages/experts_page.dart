import 'dart:js';

import 'package:flutter/material.dart';
import '/model/models.dart';

class ExpertsPage extends StatelessWidget {
  const ExpertsPage({Key? key}) : super(key: key);

  Widget itemCard(Expert data, BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width/20,
              backgroundImage: AssetImage(data.photo!)
            ),
//          CircleAvatar(
//            child: Image.asset(data.photo!),
//          ),
            const SizedBox(height: 10,),
            Text(data.name!),
            const SizedBox(height: 10,),
            Expanded(
              child: Text(data.job!, maxLines: 6,),
            ),
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: MediaQuery.of(context).size.shortestSide < 600 ? 2 : 4,
        ),
        itemBuilder: (context, i) => itemCard(experts[i], context),
        itemCount: experts.length,
    );
  }
}
