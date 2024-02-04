import 'dart:convert';

import 'package:flutter/material.dart';
import '../../helper/themes.dart';

class ListCalender extends StatelessWidget {
  const ListCalender({Key? key});

  static get http => null;

  static Future<List<dynamic>> fetchRecords() async {
    final response = await http.get(Uri.parse('https://api.airtable.com/v0/appjTOpNTc0Ks4uqX/Projects'));
    if (response.statusCode == 200) {
      return json.decode(response.body)['records'];
    } else {
      throw Exception('Failed to load records');
    }
  }


  static Widget buildBottomSheet(BuildContext context, double screenWidth, double screenHeight) {
    return BottomSheet(
      onClosing: () {},
      backgroundColor: Colors.transparent,
      enableDrag: false,
      builder: (context) {
        return ClipRRect(
          child: Container(
            height: 170,
            decoration: BoxDecoration(
              color: blancoWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 15,
                ),
              ],
            ),
            width: screenWidth,
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 30,
                      height: 2, // Height of the horizontal line
                      color: Colors.black, // Color of the horizontal line
                    ),
                  ),
                  // SizedBox(height: 20,),
                  Text("Sarah's Calender", style: message1(),),
                  Expanded(
                    child: FutureBuilder(
                      future: fetchRecords(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          final records = snapshot.data;
                          return ListView.builder(
                            itemCount: records?.length,
                            itemBuilder: (context, index) {
                              final record = records![index];
                              return ListTile(
                                title: Text(record['Event Name']),
                                subtitle: Text('Duration: ${record['Duration']}'),
                                trailing: Text('Description: ${record['Description']}'),
                              );
                            },
                          );
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}