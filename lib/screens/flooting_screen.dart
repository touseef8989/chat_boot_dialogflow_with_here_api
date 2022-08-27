import 'package:covid_19_chatboot/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class MainFloating extends StatelessWidget {
  // const MainFloating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
     Padding(
       padding: const EdgeInsets.all(20.0),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
               FloatingActionButton(
              backgroundColor: Colors.white,
              focusColor: Colors.red,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          child: Icon(
            Icons.mark_as_unread_sharp,
            color: Colors.purple,
          ),
        ),
        ],
       ),
     ),
        ],
      ),
    );
  }
}
