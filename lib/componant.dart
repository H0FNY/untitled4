import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextForm({
  TextInputType Type=TextInputType.text,
  bool hide=false,
  Icon? prifxicon,
  IconButton? sufficon,
  String? labeltext,
})
=> TextFormField(
keyboardType: Type,
cursorColor: Colors.deepPurple,
style: TextStyle(color: Colors.deepPurple),
decoration: InputDecoration(
prefixIcon: prifxicon,
labelText: labeltext,
suffixIcon: sufficon,
labelStyle:  TextStyle(color: Colors.deepPurple),
focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.deepPurple,
      width: 2,
    ),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.deepPurple,
      width: 1.5,
    ),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
),
);