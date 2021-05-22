import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:korkort11/models/user.dart';
import 'package:korkort11/view/auth_screens/signup.dart';
import 'package:korkort11/view/home_screen/home_screen.dart';
import 'package:korkort11/view/page_transitions/slide_transition.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email,password;
  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          width: width,
          height: height,
            child: Column(
              children: [
                Expanded(flex:3,child:Container(child: Column(
                  children: [
                    Container(
                      width: width,
                      height: height*0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/driving-school (1).png'),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Al',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'korkort',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),

                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'اهلا وسهلا في',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "cairo",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),)),
                Expanded(flex:5,child: Container(
                  padding: EdgeInsets.all(10),
                  child:Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('البريد الالكتروني',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "cairo",
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.end),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      color: Colors.grey[300],
                      width: width,
                      height: height*0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        onChanged: (val){
                          setState(() {
                            email=val;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'كلمة المرور',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "cairo",
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      color: Colors.grey[300],
                      width: width,
                      height: height*0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        onChanged: (val){
                          setState(() {
                            password=val;
                          });
                        },
                      ),
                    ),
                    //************************************************
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: height*0.04,bottom: height*0.02),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45),
                          ],
                        ),
                        width: width*0.7,
                        height: height*0.06,
                        child: MaterialButton(
                          onPressed: () async{
                            try {
                              Users user=new Users(email: email,password: password);
                              UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: user.email,
                                  password: user.password
                              );
                              Navigator.of(context)
                                  .push(SlideRightTransition(page:HomeScreen()));
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                print('No user found for that email.');
                                Fluttertoast.showToast(
                                    msg: 'No user found for that email.',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.TOP,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              } else if (e.code == 'wrong-password') {
                                print('Wrong password provided for that user.');
                                Fluttertoast.showToast(
                                    msg: 'Wrong password provided for that user.',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.TOP,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              }
                            }
//                                  Navigator.push(
//                                    context,
//                                    MaterialPageRoute(
//                                        builder: (context) => Choose()),
//                                  );
//                            Navigator.of(context)
//                                .push(SlideRightTransition(page:SignUp()));
                          },
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                                fontFamily: 'cairo',
                                color: Colors.white,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'او',
                        style: TextStyle(fontFamily: 'cairo'),
                      ),
                    ),
                  ],
                ),)),
                //***********************************************
                Expanded(flex:3,child: Container(child: Column(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45),
                          ],
                        ),
                        width: width*0.7,
                        height: height*0.06,
                        margin: EdgeInsets.only(top: height*0.02,bottom: height*0.02),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  width: width*0.05,
                                  height: height*0.05,
                                  image: AssetImage(
                                      'assets/google-symbol.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 2,
                                color: Colors.black45),
                          ],
                        ),
                        width: width*0.7,
                        height: height*0.06,
                        margin: EdgeInsets.only(bottom: height*0.01),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  width: width*0.05,
                                  height: height*0.05,
                                  image: AssetImage(
                                      'assets/facebook.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Text(
                            'اشتراك',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontFamily: 'cairo',
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: (){print("أشتراك");},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'ليس لديك حساب ؟',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'cairo',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),)
                  ],
                ),))
              ],
            ),
        ),
      ),
    );
  }
}
