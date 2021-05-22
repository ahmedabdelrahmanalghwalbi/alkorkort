import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:korkort11/models/user.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:korkort11/view/auth_screens/login.dart';
import 'package:korkort11/view/home_screen/home_screen.dart';
import 'package:korkort11/view/page_transitions/slide_transition.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';




class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
//  TextEditingController _firstNameController =TextEditingController();
//  TextEditingController _lastNameController =TextEditingController();
//  TextEditingController _emailController =TextEditingController();
//  TextEditingController _passwordController =TextEditingController();
String firstName,lastName,email,password;
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;

//google signin

//  Future<UserCredential> signInWithGoogle() async {
//    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
//    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//    final credential = GoogleAuthProvider.credential(
//      accessToken: googleAuth.accessToken,
//      idToken: googleAuth.idToken,
//    );
//    return await FirebaseAuth.instance.signInWithCredential(credential);
//  }

  //facebook sign in

//  Future<UserCredential> signInWithFacebook() async {
//    // Trigger the sign-in flow
//    final AccessToken result = await FacebookAuth.instance.login();
//
//    // Create a credential from the access token
//    final facebookAuthCredential = FacebookAuthProvider.credential(result.token);
//
//    // Once signed in, return the UserCredential
//    return await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
//  }


  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Form(
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
                Expanded(flex:4,child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'اسم العائلة',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                color: Colors.grey[300],
                                width: width*0.4,
                                height: height*0.06,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  onChanged: (val){
                                    setState(() {
                                      lastName =val;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'الاسم الاول',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                color: Colors.grey[300],
                                width: width*0.4,
                                height: height*0.06,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  onChanged: (val){
                                    setState(() {
                                      firstName=val;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text('البريد الالكتروني',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "cairo",
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end),
                      Container(
                        margin: EdgeInsets.only(top: 2),
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
                      SizedBox(height: 5,),
                      Text(
                        'كلمة المرور',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "cairo",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        color: Colors.grey[300],
                        width: width,
                        height: height*0.06,
                        child: TextFormField(
                          onChanged: (val){
                            setState(() {
                              password=val;
                            });
                          },
                          obscureText: true,
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      //************************************************
                    ],
                  ),),),

                //***********************************************
                Expanded(flex:4,child: Container(child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: height*0.01,bottom: height*0.01),
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
                          onPressed: ()async {
                            try {
                              UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                  email: email,
                                  password:password
                              );
                              Users user=new Users(email: email,password: password,firstName: firstName,lastName: lastName,uid: userCredential.user.uid);
                              FirebaseFirestore.instance.collection('users').add(user.toJson()).then((value) =>print("new user added successfully in the Firestore") ).catchError((error)=>print("error in store new user in the Firestore ${error}"));
                              Navigator.of(context).push(SlideRightTransition(page:HomeScreen()));
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'weak-password') {
                                print('The password provided is too weak.');
                                Fluttertoast.showToast(
                                    msg: "The password provided is too weak.",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.TOP,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              } else if (e.code == 'email-already-in-use') {
                                print('The account already exists for that email.');
                                Fluttertoast.showToast(
                                    msg: "The account already exists for that email.",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.TOP,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              }
                            } catch (e) {
                              print(e);
                              Fluttertoast.showToast(
                                  msg:"${e}",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
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
                            'انشاء حساب',
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
                        margin: EdgeInsets.only(top: height*0.01,bottom: height*0.02),
                        child: MaterialButton(
                          onPressed: () {
                            try {
//                               signInWithGoogle();
                              Navigator.of(context).push(SlideRightTransition(page:Login()));
                            }catch(ex){
                              print(ex);
                            }
                          },
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
                          onPressed: () {
//                            try {
//                               signInWithFacebook();
//                              Navigator.of(context).push(SlideRightTransition(page:Login()));
//                            }catch(ex){
//                              print(ex);
//                            }
                          },
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
                            'تسجيل دخول',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontFamily: 'cairo',
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: (){print("تسجيل دخول");},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'لديك حساب بالفعل ؟',
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
      ),
    );
  }
}
