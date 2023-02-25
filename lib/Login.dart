import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled4/componant.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hide1=false,hide2=false;
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.deepPurple,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Stack(
                children: [
                  ClipPath(
                    clipper: Customshape(),
                    child: Container(
                      color: Colors.deepPurple,
                      height: 250,
                    ),
                  ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 130,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 120,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child:TextForm(
                            labeltext: 'Full Name',
                            Type: TextInputType.text,
                            prifxicon: Icon(
                             Icons.text_format_outlined,
                             color: Colors.deepPurple,
                             size: 22,
                            ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                         child: TextForm(
                           labeltext: 'Email',
                           Type: TextInputType.emailAddress,
                           prifxicon: Icon(
                             Icons.email_outlined,
                             color: Colors.deepPurple,
                             size: 22,
                           ),
                         ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: TextForm(
                          labeltext: 'Phone',
                          Type: TextInputType.number,
                          prifxicon: Icon(
                            Icons.phone_android_outlined,
                            color: Colors.deepPurple,
                            size: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: TextForm(
                          labeltext: 'Phone',
                          Type: TextInputType.visiblePassword,
                          hide: hide1,
                          sufficon: IconButton(
                            onPressed: (){
                              setState(() {
                                hide1=!hide1;
                              });
                            },
                            icon: hide1? Icon(
                              Icons.visibility,
                              color: Colors.deepPurple,
                              size: 20,
                            ):Icon(
                              Icons.visibility_off,
                              color: Colors.deepPurple,
                              size: 20,
                            ),
                          ),
                          prifxicon: Icon(
                            Icons.lock_outline,
                            color: Colors.deepPurple,
                            size: 22,
                          ),
                        ),
                        // TextFormField(
                        //   keyboardType: TextInputType.visiblePassword,
                        //   obscureText: hide1,
                        //
                        //   cursorColor: Colors.deepPurple,
                        //   style: TextStyle(color: Colors.deepPurple),
                        //   decoration: InputDecoration(
                        //     prefixIcon: Icon(
                        //       Icons.lock_outline,
                        //       color: Colors.deepPurple,
                        //       size: 22,
                        //     ),
                        //     suffixIcon:IconButton(
                        //         onPressed: (){
                        //           setState(() {
                        //             hide1=!hide1;
                        //           });
                        //         },
                        //         icon: hide1? Icon(
                        //           Icons.visibility,
                        //           color: Colors.deepPurple,
                        //           size: 20,
                        //         ):Icon(
                        //           Icons.visibility_off,
                        //           color: Colors.deepPurple,
                        //           size: 20,
                        //         ),
                        //     ),
                        //   ),
                        // ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: hide2,
                          cursorColor: Colors.deepPurple,
                          style: TextStyle(color: Colors.deepPurple),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.deepPurple,
                              size: 22,
                            ),
                            suffixIcon:IconButton(
                              onPressed: (){
                                setState(() {
                                  hide2=!hide2;
                                });
                              },
                              icon: hide2? Icon(
                                Icons.visibility,
                                color: Colors.deepPurple,
                                size: 20,
                              ):Icon(
                                Icons.visibility_off,
                                color: Colors.deepPurple,
                                size: 20,
                              ),
                            ),
                            labelText: 'Confirm Password',
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
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.deepPurple),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(15)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                  },
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: TextButton(
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.all(15)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                        side: BorderSide(
                                            color: Colors.deepPurple, width: 1.5),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 20,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    double width=size.width;
    double height=size.height;
    path.lineTo(0, height-20);
    // var firstControlPoint = Offset(0, height-20);
    // var firstEndPoint = Offset(width/4-20, height -70);
    path.quadraticBezierTo(width/4,height-40,width/2-30,height-30);
    // var secondControlPoint = Offset(width/2, height +40);
    // var secondEndPoint = Offset(width, height+25);
    path.quadraticBezierTo((width*3/4)+20,height-10,width,height-30);
    path.lineTo(width, height);
    path.lineTo(width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}