import 'package:flutter/material.dart';
import 'package:korkort11/quiz/views/home.dart';
import 'package:korkort11/view/home_screen/home_screen.dart';
import 'package:korkort11/view/page_transitions/scale_transition.dart';
import 'home_4_pages/home7.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SingleChildScrollView(
        child: Container(
//          width: MediaQuery.of(context).size.width,
//          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 3,
                            spreadRadius: 3,
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          'الامتحانات الحالية',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'cairo',
                              fontSize: 18,
                              letterSpacing: 2,
                              shadows: [
                                Shadow(blurRadius: 3, color: Colors.black45)
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 3,
                              spreadRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'امتحانات الاسئلة النظرية الفئة -B',
                              style: TextStyle(
                                fontFamily: 'cairo',
                                fontSize: 18,
                                letterSpacing: 2,
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'الاقسام التي تم انهائها 4/18',
                                      style: TextStyle(
                                        fontFamily: 'cairo',
                                        fontSize: 14,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        margin: EdgeInsets.only(top: 70, left: 40),
                                        width: 150,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withOpacity(0.3),
                                              blurRadius: 2,
                                              spreadRadius: 2,
                                            ),
                                          ],
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10.0),
                                              bottomRight: Radius.circular(10.0)),
                                          color: Colors.green,
                                        ),
                                        child: Center(
                                          child: MaterialButton(
                                            onPressed: () {
//                                              Navigator.push(
//                                                context,
//                                                MaterialPageRoute(
//                                                    builder: (context) => Home7()),
//                                              );
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                            },
                                            child: Text(
                                              'اكمال الدراسة',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'cairo',
                                                fontSize: 18,
                                                letterSpacing: 2,
                                                shadows: [
                                                  Shadow(
                                                      blurRadius: 3,
                                                      color: Colors.black45)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20, right: 30),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 4,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '12%',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // width: 210,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: MaterialButton(
                            onPressed: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => Quiz()),
//                              );
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(builder: (context) => Choose()),
//                              );
                              Navigator.of(context)
                                  .push(ScaleTransitionRoute(page:HomeScreen()));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'اضافة امتحان جديد',
                                  style: TextStyle(
                                    fontFamily: 'cairo',
                                    fontSize: 18,
                                    letterSpacing: 2,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image(
                                  width: 30,
                                  image: AssetImage('assets/completed-.png'),
                                ),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'معلومات عامة',
                        style: TextStyle(
                          fontFamily: 'cairo',
                          fontSize: 14,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/77.png'),
                              ),
                              Text(
                                'هل من الممكن القيادة في السويد برخصة قيادة اجنبية ؟',
                                style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 14,
                                  letterSpacing: 2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                ' هنا يتم عرض النصوص المضافة من لوحة التحكم',
                                style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 12,
                                  letterSpacing: 2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text(
                            'اعلان',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'cairo',
                                fontSize: 18,
                                letterSpacing: 2,
                                shadows: [
                                  Shadow(blurRadius: 3, color: Colors.black45)
                                ]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
