import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/secound_page.dart';

import 'keyboard.dart';

class my_main_coloumn extends StatefulWidget {

  final TextEditingController _myController = TextEditingController();
  @override
  State<my_main_coloumn> createState() => _my_main_coloumnState();
  final List<String> myList=[];

  delete() {
    _myController.text = _myController.text
        .substring(0, _myController.text.length - 1);
  }
}

class _my_main_coloumnState extends State<my_main_coloumn> {
  final TextEditingController _myController = TextEditingController();
  final List<String> myList=[];

  @override
  Widget build(BuildContext context) {
    print(myList);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // display the entered numbers
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 70,
            child: Center(
              child: TextField(
                controller: widget._myController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none),
                showCursor: false,
                style: const TextStyle(
                    fontSize: 40, fontWeight: FontWeight.w300),
                keyboardType: TextInputType.none,
              ),
            ),
          ),
        ),
              TextButton.icon(
              icon: Icon(
              Icons.add, size: 14, color: Color.fromRGBO(47, 240, 36, 1)),
              label: Text('Add To Contacts',
                  style: TextStyle(color: Color.fromRGBO(47, 240, 36, 1))),
              onPressed: () {
                myList.add(widget._myController.text);
                setState(() {});
              }),
        NumPad(
          buttonSize: 80,
          buttonColor: Colors.white,
          iconColor: Colors.black,
          controller: widget._myController,
          delete: () {
            widget._myController.text = widget._myController.text
                .substring(0, widget._myController.text.length - 1);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage(myList)),
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
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child:
                Icon(Icons.phone,
                  color: Colors.white,
                  size: 30,)
            ),
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
