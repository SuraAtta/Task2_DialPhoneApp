import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task2/my_main_column.dart';

class Person{
  final String name;
  final String phone_number;

  Person(this.name,this.phone_number);

  static List<Person> contacts = [];

  static String concat(String firstname,String lastname){
    String fullname = firstname+' '+lastname;
    return fullname;
  }

  static add(String person,String phone_number){
    contacts.add(Person(person,phone_number));
  }


}