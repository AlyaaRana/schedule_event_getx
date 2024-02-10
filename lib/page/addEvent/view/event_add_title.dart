import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedule_event_getx/helper/themes.dart';
import 'package:schedule_event_getx/page/addEvent/controller/event_controller.dart';
import 'package:schedule_event_getx/page/addEvent/widget/save_event_add_title_button.dart';
import 'package:schedule_event_getx/page/addEvent/widget/select_date_widget.dart';
import 'package:schedule_event_getx/page/addEvent/widget/select_type_widget.dart';
import 'package:schedule_event_getx/page/addEvent/widget/txtSingaporeTime.dart';
import 'package:schedule_event_getx/page/addEvent/widget/type_duration_widget.dart';

class AddEvent extends StatelessWidget {
  final AddEventController addEventController = Get.put(AddEventController());
  TextEditingController titleController = TextEditingController();
  AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_outlined),
                SizedBox(width: 5,),
                Text("Add New Event", style: txtTitleAdd(),)
              ],
            ),
              Container(
              padding: const EdgeInsets.only(left: 10, top: 5,right: 15),
              child:
              Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("Please fill out this form before scheduling an appointment with Sarah.Thank you for your cooperation",style: caption3(),),
                    SizedBox(height: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Input Event Name",
                          textAlign: TextAlign.left,
                          style: txtCapt(),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                            labelStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select a type event",
                          textAlign: TextAlign.left,
                          style: txtCapt(),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SelectType(
                              text: 'In-Person',
                              onClicked: () {  },
                            ),
                            SelectType(
                              text: 'Call',
                              onClicked: () {  },
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Input duration",
                          textAlign: TextAlign.left,
                          style: txtCapt(),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  controller: titleController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                    labelStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Minute",style: txtCapt(),),
                            SizedBox(width: 165,)

                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 25,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Input session",
                          textAlign: TextAlign.left,
                          style: txtCapt(),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  controller: titleController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                                    labelStyle: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Text(""),
                            SizedBox(width: 200,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 50,),
                    ButtonSaveTitle()
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
