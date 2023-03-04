import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextForm({
  required String? Function(String?)? validator,
  required TextEditingController controller,
  TextInputType Type = TextInputType.text,
  bool hide = false,
  Icon? prifxicon,
  IconButton? sufficon,
  String? labeltext,
}) =>
    Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: Type,
        obscureText: hide,
        cursorColor: Colors.deepPurple,
        style: TextStyle(color: Colors.deepPurple),
        decoration: InputDecoration(
          prefixIcon: prifxicon,
          labelText: labeltext,
          suffixIcon: sufficon,
          labelStyle: TextStyle(color: Colors.deepPurple),
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
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedErrorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
        validator: validator,
      ),
    );


Future navigate({
required BuildContext context,
  required Widget widget,
}) {
  return Navigator.push(context, MaterialPageRoute(builder: (context){
return widget;
}));
}