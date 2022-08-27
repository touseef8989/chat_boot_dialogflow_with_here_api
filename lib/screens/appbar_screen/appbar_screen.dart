import 'package:flutter/material.dart';

import '../utils/style.dart';

class AppbarScreen extends StatelessWidget {
  // const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                                "https://i.pinimg.com/736x/b8/91/d7/b891d7fb634978fac4c4f4d4a62f74f6.jpg")),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "COVID-19 Virtual Assistant",
                          style: mainheading,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            "Hello, How can I help you?",
                            style: secondmainheading,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
              
  }
}