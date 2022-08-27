import 'package:covid_19_chatboot/screens/chat/dumy_chat.dart';
import 'package:covid_19_chatboot/screens/flooting_screen.dart';
import 'package:covid_19_chatboot/screens/home_screen/home_screen.dart';
//import 'package:covid_19_chatboot/screens/chat/voice_chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MainFloating(),
    );
  }
}


