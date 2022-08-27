
import 'package:covid_19_chatboot/screens/appbar_screen/appbar_screen.dart';
import 'package:covid_19_chatboot/screens/chat/dumy_chat.dart';
import 'package:covid_19_chatboot/screens/selection_screen/api_get_result.dart';
import 'package:flutter/material.dart';

import '../selection_screen/selection_Screen.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: (Column(
            children: [
              //call appbar screen that i make seprate
              AppbarScreen(),
              SizedBox(
                height: 50,
              ),
              SelectonScreen(),
              SizedBox(
                height: 40,
              ),
            ApiGetResult(),
              SizedBox(
                height: 100,
              ),

              Container(
                height: 120,
                color: Colors.purple,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: Center(
                        child: Container(
                          width: 250  ,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(
                            //   color: Colors.amber,
                            // ),
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child:TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Chat()));

                          }, 
                          child: Text("Press for Chat")),
                        ),
                      ),
                    ),
                    // Text(
                    //   "Send",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 17,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 8,
                    // ),
                    // Icon(
                    //   Icons.mic,
                    //   color: Colors.white,
                    // )
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
