import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  double width = 0;
  double height = 0;

  bool startAnimation = false;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Flutter Mapp',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body:AnimationLimiter(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: Duration(milliseconds: 200),
              child: SlideAnimation(
                duration: Duration(milliseconds: 2500),
                horizontalOffset: -width,
                verticalOffset: -300,
                curve: Curves.fastLinearToSlowEaseIn,
                child: Container(
                  width: width * 0.9,
                  height: height / 10,
                  margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(1, 2),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
