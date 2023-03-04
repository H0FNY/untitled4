import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled4/Register.dart';
import 'package:untitled4/componant.dart';
import 'package:untitled4/task2.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hide = true;
  double width = 0;
  double height = 0;
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  final emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              ClipPath(
                clipper: Customshape(),
                child: Stack(
                  children: [
                    Container(
                    color: Colors.deepPurple,
                    height: 250,
                    width: width,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                    // Positioned(
                    //   top: height/25,
                    //   left: width/75,
                    //   child: IconButton(
                    //     onPressed: (){
                    //       Navigator.pop(context);
                    //     },
                    //     icon: Icon(
                    //       Icons.arrow_back,
                    //       color: Colors.white,
                    //       size: 30,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      TextForm(
                        controller: emailController,
                        labeltext: 'Email',
                        Type: TextInputType.text,
                        prifxicon: Icon(
                          Icons.text_format_outlined,
                          color: Colors.deepPurple,
                          size: 22,
                        ),
                        validator: (value){
                          if(value!.isEmpty)
                            return "please enter your Email";
                          else if(!emailValid.hasMatch(emailController.text.toString()))
                          return "please enter valid Email";
                        }
                      ),
                      TextForm(
                        controller: passwordController,
                        labeltext: 'Password',
                        Type: TextInputType.visiblePassword,
                        hide: hide,
                        sufficon: IconButton(
                          onPressed: (){
                            setState(() {
                              hide=!hide;
                            });
                          },
                          icon: hide? Icon(
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
                        validator:(value){
                          if(value!.isEmpty)
                            {
                              return "please enter your password";
                            }
                        }
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
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    if(formKey.currentState!.validate()){
                                      navigate(context: context, widget: list());
                                    }
                                  },
                                  child: Text(
                                    'Login',
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
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: BorderSide(
                                            color: Colors.deepPurple,
                                            width: 1.5),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          return Regester();
                                        }));
                                  },
                                  child: Text(
                                    'Register',
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
            ],
          ),
        ),
      ),
    );
  }
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double width = size.width;
    double height = size.height;
    path.lineTo(0, height - 20);
    // var firstControlPoint = Offset(0, height-20);
    // var firstEndPoint = Offset(width/4-20, height -70);
    path.quadraticBezierTo(width / 4, height - 40, width / 2 - 30, height - 30);
    // var secondControlPoint = Offset(width/2, height +40);
    // var secondEndPoint = Offset(width, height+25);
    path.quadraticBezierTo(
        (width * 3 / 4) + 20, height - 10, width, height - 30);
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
