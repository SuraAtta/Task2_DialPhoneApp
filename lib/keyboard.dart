
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/my_main_column.dart';
import 'package:task2/secound_page.dart';

import 'main.dart';

class NumPad extends StatefulWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;

  const NumPad({
    Key? key,
    this.buttonSize = 70,
    this.buttonColor = Colors.white,
    this.iconColor = Colors.black,
    required this.delete,
    required this.controller,
  }) : super(key: key);

  @override
  State<NumPad> createState() => _NumPadState();
}

class _NumPadState extends State<NumPad> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 1,
                chars: '',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,
              ),
              NumberButton(
                number: 2,
                chars: 'ABC',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),NumberButton(
                number: 3,
                chars: 'DEF',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
                chars: 'GHI',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
              NumberButton(
                number: 5,
                chars: 'JKL',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
              NumberButton(
                number: 6,
                chars: 'MNO',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
                chars: 'PQRS',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
              NumberButton(
                number: 8,
                chars: 'TUV',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
              NumberButton(
                number: 9,
                chars: 'WXYZ',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StringButton(
                s:'*' ,
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,
              ),
              //  this button is used to delete the last number
              NumberButton(
                number: 0,
                chars: '+',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,

              ),
              // this button is used to submit the entered value
              StringButton(
                s: '#',
                size: widget.buttonSize,
                color: widget.buttonColor,
                controller: widget.controller,
              ),
              //
            ],
          ),
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
class NumberButton extends StatelessWidget {
  final int number;
  final double size;
  final Color color;
  final TextEditingController controller;
  final String chars;

  const NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.color,
    required this.controller,
    required this.chars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () {
          controller.text += number.toString();
        },
        child: Column(
          children:[
            SizedBox(height: 15),
            Text(
            number.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Colors.black, fontSize: 30),
          ),
            Text(
              chars,
              style: const TextStyle(
                  color: Colors.black, fontSize: 12),
            ),
          ] ,
        ),
      ),
    );
  }
}
class StringButton extends StatelessWidget {
  final String s;
  final double size;
  final Color color;
  final TextEditingController controller;


  const StringButton({
    Key? key,
    required this.s,
    required this.size,
    required this.color,
    required this.controller,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () {
          controller.text += s;
        },
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  s,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black, fontSize: 35),
                ),
              ),
            ],
          )
        ),
    );
  }
}