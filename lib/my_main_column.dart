import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/secound_page.dart';
import 'package:task2/add_person.dart';

import 'keyboard.dart';

class MyMainColoum extends StatefulWidget {
  @override
  State<MyMainColoum> createState() => _MyMainColoumState();
  final TextEditingController myController = TextEditingController();
  delete() {
    myController.text =
        myController.text.substring(0, myController.text.length - 1);
  }
}
String number='';

class _MyMainColoumState extends State<MyMainColoum> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 70,
            child: Center(
              child: TextField(
                controller: widget.myController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(border: InputBorder.none),
                showCursor: false,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
                keyboardType: TextInputType.none,
                onChanged: (x){
                  number=x;
                },
              ),
            ),
          ),
        ),
        TextButton.icon(
            icon: Icon(Icons.add,
                size: 14, color: Color.fromRGBO(47, 240, 36, 1)),
            label: Text('Add To Contacts',
                style: TextStyle(color: Color.fromRGBO(47, 240, 36, 1))),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddContact(number: widget.myController.text)),
              );
              setState(() {});
            }),
        NumPad(
          buttonSize: 80,
          buttonColor: Colors.white,
          iconColor: Colors.black,
          controller: widget.myController,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
                setState(() {});
              },
              icon: Icon(
                Icons.people_outline,
                color: Colors.black,
              ),
              iconSize: 35,
            ),
            FlatButton(
                onPressed: null,
                disabledColor: Color.fromRGBO(47, 240, 36, 1),
                height: 65,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
              onPressed: () => widget.delete(),
              icon: Icon(
                Icons.backspace_outlined,
                color: Colors.black,
              ),
              iconSize: 30,
            ),
          ],
        ),
      ],
    );
  }
} //
