import 'package:covid_19_chatboot/screens/dialogue_screen/show_dialogue_screen.dart';
import 'package:flutter/material.dart';

import '../utils/style.dart';

class SelectonScreen extends StatelessWidget {
  // const SelectonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 210,
      color: Colors.grey.withOpacity(0.4),
      child: Column(
        children: [
          Text(
            "what do you want to do?",
            style: TextStyle(fontSize: 18),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AlertBox(),
                ),
              );
            },
            child: Container(
              width: 180,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.purple)),
              child: Center(
                child: Text(
                  "Search Nearby Hospitals",
                  style: selectheading,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 180,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "Ask Queries",
                style: selectheading,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 180,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "Emergency Information",
                style: selectheading,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 180,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.purple)),
            child: Center(
              child: Text(
                "Speach To text",
                style: selectheading,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
