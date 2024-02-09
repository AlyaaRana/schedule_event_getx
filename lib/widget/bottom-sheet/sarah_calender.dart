
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:schedule_event_getx/Networking/postman/controller/event_listing_controller.dart';
import '../../helper/themes.dart';

class ListCalender extends StatelessWidget {
  ListCalender({Key? key}) : super(key: key);

  static Widget buildBottomSheet(
      BuildContext context, double screenWidth, double screenHeight) {
    final EventController eventController = Get.put(EventController());

    eventController.fetchEvents();

    return BottomSheet(
      onClosing: () {},
      backgroundColor: Colors.transparent,
      enableDrag: false,
      builder: (context) {
        return ClipRRect(
          child: Container(
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
            child: SingleChildScrollView(
              child: Container(
                height: 250,
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
                    Obx(
                          () => ListView.builder(
                        itemCount: eventController.events.length,
                        physics: NeverScrollableScrollPhysics(), // Disable scrolling of the inner ListView
                        shrinkWrap: true, // Add this line
                        itemBuilder: (context, index) {
                          final event = eventController.events[index];
                          return ListTile(
                            leading: Icon(Icons.event),
                            title: Text(event.title),
                            subtitle: Text(event.description),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}