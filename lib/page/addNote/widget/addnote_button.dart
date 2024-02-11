import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schedule_event_getx/helper/themes.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showBottomSheet(context);
      },
      child: Container(
        height: 28,
        width: 179,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            "Add notes",
            style: caption5(),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topRight,
                  child: Icon(Icons.expand,size: 25,)
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.only(right: 120),
                  child: Text("Write a note to share anything that will help prepare for our session.",
                    style: message1(),
                  )
              ),
              SizedBox(height: 40),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.add_circle, color: Colors.black,size: 35,)
              ),
            ],
          ),
        );
      },
    );
  }
}