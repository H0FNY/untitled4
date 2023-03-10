import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled4/login/Login.dart';
import 'package:untitled4/componant/componant.dart';

class Regester extends StatefulWidget {
  @override
  State<Regester> createState() => _RegesterState();
}

class _RegesterState extends State<Regester> {
  bool hide1=true,hide2=true;
  double width = 0;
  double height = 0;
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final phoneController=TextEditingController();
  final passwordController=TextEditingController();
  final copasswordController=TextEditingController();
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
                        'Register',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height/25,
                    left: width/75,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                TextForm(
                  controller: nameController,
                    labeltext: 'Full Name',
                    Type: TextInputType.text,
                    prifxicon: Icon(
                     Icons.text_format_outlined,
                     color: Colors.deepPurple,
                     size: 22,
                    ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please emter your Name";
                    }
                  },
                ),
                TextForm(
                  controller: emailController,
                  labeltext: 'Email',
                  Type: TextInputType.emailAddress,
                  prifxicon: Icon(
                    Icons.email_outlined,
                    color: Colors.deepPurple,
                    size: 22,
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please emter your Email";
                    }
                  },
                ),
                TextForm(
                  controller: phoneController,
                  labeltext: 'Phone',
                  Type: TextInputType.number,
                  prifxicon: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.deepPurple,
                    size: 22,
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please emter your phone";
                    }
                    else if(value.length<11){
                      return "this phone is short";
                    }
                  },
                ),
                TextForm(
                  controller: passwordController,
                  labeltext: 'Password',
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
                  validator: (value){
                    if(value!.isEmpty){
                      return "please emter your password";
                    }
                    else if(value.length<8){
                      return "this password is short";
                    }
                  },
                ),
                TextForm(
                  controller: copasswordController,
                  labeltext: 'Confirm Password',
                  Type: TextInputType.visiblePassword,
                  hide: hide2,
                  sufficon: IconButton(
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
                  prifxicon: Icon(
                    Icons.lock_outline,
                    color: Colors.deepPurple,
                    size: 22,
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "please emter your password";
                    }
                    else if(value.length<8){
                      return "this password is short";
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: width/3.18,vertical: height/50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
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
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: width/2.9,vertical: height/60)),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(
                                color: Colors.deepPurple, width: 1.5),
                          ),
                        ),
                      ),
                      onPressed: () {
                        navigate(context: context, widget: Login());
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
              ]),
              ),
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