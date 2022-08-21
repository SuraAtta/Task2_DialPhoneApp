import 'package:flutter/material.dart';
import 'package:task2/secound_page.dart';

class contacts extends StatelessWidget {
  const contacts({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final SecondPage widget;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 5, 0),
            child: Container(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child:
                      Text('Contacts', style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),)),
                  Expanded(
                    flex: 1,
                    child:
                    Icon(Icons.window, color: Colors.grey,),
                  ), Expanded(
                    flex: 1,
                    child:
                    Icon(Icons.view_agenda_outlined),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
                children:
                widget.mylist.map((e) => Container(
                    color:Colors.white,
                    height: 90,
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child:CircleAvatar(
                              radius: 35,
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage('Assets/images/me.jpg'),
                              ),
                            )
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sura R. Atta',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                Text(e,style: TextStyle(fontSize: 20),),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.phone,
                            color: Color.fromRGBO(47, 240, 36, 1),
                            size: 30,),
                        )
                      ],
                    )
                ),
                ).toList()
            ),
          ),
        ]
    );
  }
}
