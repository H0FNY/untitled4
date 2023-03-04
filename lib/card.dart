import 'package:flutter/material.dart';
class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 81,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/DSC_4716.png'),
            ),
          ),
          Text('Ahmed Hofny',
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            color: Colors.white,
            fontSize: 30,
          ),
          ),
          Text(
            'flutter devoloper',
            style: TextStyle(
                fontFamily: 'RobotoCondensed',
                color: Colors.grey,
                fontSize: 20,
            ),
          ),
          Divider(
            thickness: 1,
            endIndent: 60,
            indent: 60,
            color: Colors.grey,
          ),

        ],
      ),
    );
  }
}
