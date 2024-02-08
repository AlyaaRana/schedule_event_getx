import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../controller/airtable/airtable_service.dart';
import '../../controller/airtable/record_controller.dart';
import '../../helper/themes.dart';

class ListCalender extends StatelessWidget {
  ListCalender({Key? key});

  static Widget buildBottomSheet(
      BuildContext context, double screenWidth, double screenHeight) {
    final RecordController recordController = Get.put(RecordController(AirtableService(Airtable('pat441atTxdMXPg5d.3dfd9ec90abd2edc8a65f2d422c486a4c7f5301928357c8262cb8dcbfa648939'))));

    final String baseId = 'schedule';
    final String tableName = 'Projects';

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
                    ),
                  ),
                  const SizedBox(height: 10),
                  FutureBuilder<List<Map<String, dynamic>>>(
                      future: recordController.getRecords(baseId, tableName), // Pass the arguments here
                      builder: ((context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return ListView.builder(
                              itemCount: snapshot.data?.length,
                              itemBuilder: (context, index) {
                                final record = snapshot.data?[index];
                                return ListTile(
                                  title: Text(record?['fields']['Name']),
                                  subtitle: Text(record?['fields']['Description']),
                                );
                              });
                        }
                      }),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}