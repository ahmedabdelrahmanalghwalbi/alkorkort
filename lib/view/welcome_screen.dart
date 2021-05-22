import 'package:flutter/material.dart';
import 'package:korkort11/view/auth_screens/login.dart';
import 'package:korkort11/view/auth_screens/signup.dart';
import 'package:korkort11/view/page_transitions/slide_transition.dart';

class WelcomeScreen extends StatefulWidget {
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation ;
  int currentValue;
  bool isLanguageSelected=false;

  @override
  void initState() {
    super.initState();
    _controller=AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation=Tween<double>(begin: -1.0,end: 0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height:height*.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'korkort',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Al',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*0.07,
                  ),
                  Container(
                    width: double.infinity,
                    height: height*.24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/driving-school (1).png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height*0.07,
                  ),
                  Text(
                    'اختر لغة التطبيق',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'cairo',
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          DropdownButton(
                            iconSize: 30,
                            hint: Text("أختيار اللغة",style: TextStyle(
                                fontFamily: "cairo"
                            ),),
                            value: currentValue,
                            items: [
                              DropdownMenuItem(
                                value: 0,
                                child: Text(
                                  'العربية',
                                  style: TextStyle(fontFamily: 'cairo'),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 1,
                                child: Text('English',style: TextStyle(
                                    fontFamily: 'cairo'
                                ),),
                              ),
                            ].cast<DropdownMenuItem<int>>(),
                            onChanged: (value) {
                              setState(() {
                                currentValue = value;
                                _controller.forward();
                              });
                              print('changed to $value');
                            },
                          ),
                          AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                            child: Padding(
                              padding: EdgeInsets.only(top:40,left: 40,right: 40,bottom: 40),
                              child: AnimatedBuilder(animation: _controller, builder:(BuildContext context,Widget child){
                                return Transform(
                                  transform:Matrix4.translationValues(_animation.value*width, 0, 0) ,
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          boxShadow: [
                                            BoxShadow(
                                                spreadRadius: 2,
                                                blurRadius: 2,
                                                color: Colors.black45),
                                          ],
                                        ),
                                        width: double.infinity,
                                        height: 40,
                                        child: MaterialButton(
                                          onPressed: () {
//                                              Navigator.push(
//                                                context,
//                                                MaterialPageRoute(
//                                                    builder: (context) => Iongup()),
//                                              );
                                            Navigator.of(context)
                                                .push(SlideRightTransition(page:SignUp()));
                                          },
                                          child: Text(
                                            'الاشتراك',
                                            style: TextStyle(
                                                fontFamily: 'cairo',
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.red,
                                            )),
                                        width: double.infinity,
                                        height: 40,
                                        child: MaterialButton(
                                          onPressed: () {
//                                              Navigator.push(
//                                                context,
//                                                MaterialPageRoute(
//                                                    builder: (context) => Ionin()),
//                                              );
                                            Navigator.of(context)
                                                .push(SlideRightTransition(page:Login()));
                                          },
                                          child: Text(
                                            'تسجيل الدخول',
                                            style: TextStyle(
                                                fontFamily: 'cairo',
                                                color: Colors.red,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
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
