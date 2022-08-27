import 'package:covid_19_chatboot/screens/dialogue_screen/show_dialogue_screen.dart';
import 'package:flutter/material.dart';

import '../utils/style.dart';

class ApiGetResult extends StatelessWidget {
  // const ApiGetResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 210,
      color: Colors.grey.withOpacity(0.4),
      child: Column(
        children: [
          Text(
            "Fever Hospital:",
            style: TextStyle(fontSize: 18),
          ),
          
        ],
      ),
    );
  }
}
