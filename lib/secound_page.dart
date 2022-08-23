import 'package:flutter/material.dart';
import 'package:task2/my_main_column.dart';

import 'contact_page_buttens.dart';
import 'contacts.dart';
import 'main.dart';


  class SecondPage extends StatefulWidget {

  SecondPage( {Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            leading: Padding(
                padding: const EdgeInsets.all(10),
                child:
                IconButton(
                  icon: Icon(
                      Icons.arrow_back_ios, color: Colors.black, size: 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                )
            ),
          ),
          body: Stack(
            children:[
              contacts(widget: widget),
              ContactPageButtens()
            ]
          )
      );
  }
}


