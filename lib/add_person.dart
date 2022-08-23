import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/my_main_column.dart';
import 'package:task2/secound_page.dart';
import 'package:task2/add_contact_model.dart';

import 'contact_page_buttens.dart';
import 'main.dart';

class AddContact extends StatefulWidget {
  String number;
  AddContact({Key? key,required this.number}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContact(number);
}

class _AddContact extends State<AddContact> {
  String number;
  _AddContact(this.number);

  TextEditingController controllerValue = TextEditingController();
  void initState() {
    controllerValue.text = number;
    super.initState();
  }


  final TextEditingController fnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final ScrollController scrollController = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
              )),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 130, 20, 0),
              child: Column(
                  children: [
                Container(
                  width: 200,
                  height: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400]
                  ),
                  child: Icon(Icons.person,color: Colors.grey[200],size: 70,),
                ),
                    Expanded(
                      child: ListView(
                        children:[
                          Container(
                            height: 300,
                            padding: EdgeInsets.fromLTRB(30, 0, 20, 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextField(
                                  controller: fnameController,
                                  textInputAction: TextInputAction.next,
                                  decoration:
                                  InputDecoration(prefixIcon:Icon(Icons.person,color:Color.fromRGBO(47, 240, 36, 1)), hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20
                                  ),hintText: "  Firt Name", fillColor: Colors.grey),
                                  onChanged: (x) {
                                    setState(() {});
                                  },
                                ),
                                TextField(
                                  controller: lnameController,
                                  textInputAction: TextInputAction.next,
                                  decoration:
                                  InputDecoration(prefixIcon:Icon(Icons.person,color: Color.fromRGBO(47, 240, 36, 1)),hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20
                                  ),hintText: "  Last Name", fillColor: Colors.grey),
                                  onChanged: (x) {
                                    setState(() {});
                                  },
                                ), TextField(
                                  controller: controllerValue,
                                  textInputAction: TextInputAction.next,
                                  decoration:
                                  InputDecoration(prefixIcon:Icon(Icons.phone,color: Color.fromRGBO(47, 240, 36, 1)),hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20
                                  ),hintText: "  Phone Number", fillColor: Colors.grey),
                                  onChanged: (x) {
                                    setState(() {});
                                  },
                                ),

                                TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green[50],
                                    primary: Color.fromRGBO(47, 240, 36, 1),
                                  ),
                                  onPressed: () {
                                    String fullname = Person.concat(fnameController.text, lnameController.text);
                                    Person.add(fullname,controllerValue.text);
                                    lnameController.clear();
                                    fnameController.clear();
                                    controllerValue.clear();
                                    setState(() {});
                                  },
                                  child: Text('Save!',style: TextStyle(fontSize: 24),),
                                )
                              ],
                            ),
                          ),
                        ]
                      ),
                    ),
              ]
              ),
            ),
            ContactPageButtens(),
          ],
        )
    );
  }
}
