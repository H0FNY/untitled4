import 'package:flutter/material.dart';

class quran extends StatelessWidget {
  quran({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Color(0xFFF9F5E7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                button(
                  press: (){
                    _key.currentState!.openDrawer();
                  },
                  icon: Icon(

                    Icons.menu,
                    size: 30,
                    color: Color(0xFF93BFCF),
                  ),
                ),
                Row(
                  children: [
                    button(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Color(0xFF93BFCF),
                      ),
                    ),
                    button(
                      icon: Icon(
                        Icons.settings,
                        size: 30,
                        color: Color(0xFF93BFCF),
                      ),
                    ),
                    button(
                        icon: Icon(
                          Icons.book,
                          size: 30,
                          color: Color(0xFF93BFCF),
                        ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  child: Center(
                    child: Text(
                        'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFF9F5E7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  height: 200,
                  width: 420,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15),),
                    color: Color(0xFF93BFCF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFF9F5E7),
        child: Column(
          children: [
            SizedBox(height: 45,),
            Container(
              height: 34,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'سورة',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF93BFCF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFF93BFCF),
                    width: 2,
                    height: 22,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'الربع',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF93BFCF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFF93BFCF),
                    width: 2,
                    height: 22,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'الجزء',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF93BFCF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

Widget button ({
  required Icon icon,
  Function()? press,
})=>IconButton(
splashRadius: .1,
onPressed: press,
icon: icon,
);