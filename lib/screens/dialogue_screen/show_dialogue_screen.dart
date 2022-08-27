// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class AlertBox extends StatefulWidget {
  // const AlertBox({Key? key}) : super(key: key);

  @override
  State<AlertBox> createState() => _AlertBoxState();
}

class _AlertBoxState extends State<AlertBox> {
  TextEditingController location = TextEditingController();
  TextEditingController rating = TextEditingController();

  bool isSaving = false;
  final _formKey = GlobalKey<FormState>();

  apiresponse() async {
var endpointUrl = 'https://discover.search.hereapi.com/v1/discover';
Map<String, String> queryParams = {
  'apikey': 's_RwzEb-S5RhhrWPPM-GF9AzYXD4KlFnQQLsYcMpiVo',
  'q': 'hospitals',
  'limit':'1',
  'at': '21.240247,72.8166376'
};

final queryString = Uri.parse(endpointUrl).replace(queryParameters: queryParams);
var response = await http.get(queryString);

  
  }
    @override
  Widget build(BuildContext context) {
    return     AlertDialog(
                        content: Stack(
                          // overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              right: -40.0,
                              top: -40.0,
                              child: InkResponse(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: CircleAvatar(
                                  child: Icon(Icons.close),
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: location,
                                      decoration: InputDecoration(
                                          hintText: "Enter Location"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MaterialButton(
                                      color: Colors.purple,
                                      child: Text("Submit",style: TextStyle(color: Colors.white),),
                                      onPressed: () {
                                        apiresponse();
                                        
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
    
  }

 
 
}
