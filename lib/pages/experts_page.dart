import 'package:flutter/material.dart';
import '/model/models.dart';

class ExpertsPage extends StatelessWidget {
  const ExpertsPage({Key? key}) : super(key: key);

  Widget itemCard(Expert data)
  {
    return Card(
      child: Column(
        children: [
          CircleAvatar(
            radius: 130,
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, i) => itemCard(experts[i]),
        itemCount: experts.length,
    );
  }
}
