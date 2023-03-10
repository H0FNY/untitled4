import 'package:flutter/material.dart';

class note extends StatelessWidget {
  note({Key? key}) : super(key: key);
  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                'NotePad',
                style: TextStyle(
                  fontSize: 50,
                  color: Color.fromRGBO(36, 36, 36, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Container(
                width: width,
                height: height / 18,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text(
                      'Search notes',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(103, 103, 103, 1),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(148, 148, 148, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(103, 103, 103, 1),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(130, 255, 176, 0.73),
                ),
                width: double.infinity,
                height: height / 12,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Todays grocery list',
                        style: TextStyle(
                            color: Color.fromRGBO(32, 31, 31, 1), fontSize: 15),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'June 26, 2022 08:05 PM',
                        style: TextStyle(
                            color: Color.fromRGBO(32, 31, 31, 1), fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(255, 251, 130, 0.73),
                ),
                width: double.infinity,
                height: height / 12,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rich dad Poor dad quotes',
                        style: TextStyle(
                            color: Color.fromRGBO(32, 31, 31, 1), fontSize: 15),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'June 22, 2022 05:00 PM',
                        style: TextStyle(
                            color: Color.fromRGBO(32, 31, 31, 1), fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(254, 222, 63, 1),
        child: Icon(
          Icons.add,
          size: 35,
          color: Colors.black,
        ),
      ),
    );
  }
}
