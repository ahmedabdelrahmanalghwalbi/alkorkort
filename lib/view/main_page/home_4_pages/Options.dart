import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:korkort11/view/auth_screens/login.dart';
import 'package:korkort11/view/main_page/home_4_pages/userSettings.dart';

import 'option_screens/addProplams.dart';
import 'option_screens/language.dart';
import 'option_screens/mood.dart';
import 'option_screens/rools.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            centerTitle: true,
            title: Text(
              'الاعدادات',
              style: TextStyle(
                fontFamily: 'cairo',
                fontSize: 22,
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.brown[50],
          body: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserStetteings()),
                            );
                          },
                          child: Row(
                            children: [
                              Image(
                                width: 30,
                                height: 30,
                                image: AssetImage(
                                    'assets/computer-icons-google-account-icon-design-login-png-favpng-jFjxPac6saRuDE3LiyqsYTEZM.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'ادارة الحساب',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'cairo',
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Languge()),
                            );
                          },
                          child: Row(
                            children: [
                              Image(
                                width: 30,
                                height: 30,
                                image: AssetImage('assets/language.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'لغة التطبيق',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'cairo',
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Mood()),
                            );
                          },
                          child: Row(
                            children: [
                              Image(
                                width: 30,
                                height: 30,
                                image: AssetImage('assets/night-mode.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'الوضع الليلي',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'cairo',
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.grey.withOpacity(0.9),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                              width: 30,
                              height: 30,
                              image: AssetImage('assets/help.png')),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'الدعم',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'cairo',
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Addproplams()),
                            );
                          },
                          child: Row(
                            children: [
                              Image(
                                width: 30,
                                height: 30,
                                image: AssetImage('assets/danger.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'الابلاغ عن مشكلة',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'cairo',
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Rools()),
                            );
                          },
                          child: Row(
                            children: [
                              Image(
                                width: 30,
                                height: 30,
                                image: AssetImage('assets/policy.png'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'الشروط والسياسات',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'cairo',
                                  fontSize: 18,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Row(
                          children: [
                            Image(
                                width: 30,
                                height: 30,
                                image: AssetImage('assets/log-out.png')),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'تسجيل الخروج',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'cairo',
                                fontSize: 18,
                                letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
