import 'package:flutter/material.dart';

class contact_page_buttens extends StatelessWidget {
  const contact_page_buttens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 720,
      left: 130,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), //border corner radius
            boxShadow:[
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2),)]
        ),
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.people_outline, size: 30),
                    onPressed: () {}),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                    icon: Icon(Icons.settings_outlined, size: 30),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
