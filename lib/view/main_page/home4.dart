import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:korkort11/view/main_page/home_4_pages/addUs.dart';
import 'package:korkort11/view/main_page/home_4_pages/saved.dart';
import 'package:korkort11/view/main_page/home_4_pages/swish.dart';
import 'package:korkort11/view/main_page/home_4_pages/userSettings.dart';
import 'package:korkort11/view/main_page/home_4_pages/video.dart';
import 'package:korkort11/view/main_page/home_4_pages/Options.dart';


class Home4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding:EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                   height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      'اعلان',
                      style: TextStyle(
                          color: Colors.red[700],
                          fontFamily: 'cairo',
                          fontSize: 35,
                          letterSpacing: 4,
                          shadows: [
                            Shadow(blurRadius: 3, color: Colors.black45)
                          ]),
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
                          MaterialPageRoute(builder: (context) => Seved()),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Colors.blue[900],
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'العناصر المحفوظة',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'cairo',
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    )),
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
                          MaterialPageRoute(builder: (context) => Video()),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                            width: 30,
                            height: 30,
                            image: AssetImage('assets/play-button 2.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'مقاطع تعليمية',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'cairo',
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    )),
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
                          MaterialPageRoute(builder: (context) => Swish()),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                              width: 30,
                              height: 30,
                              image: AssetImage('assets/heart (2)11.png')),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'التبرع لنا',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'cairo',
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    )),
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
                          MaterialPageRoute(builder: (context) => AddUs()),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                              width: 30,
                              height: 30,
                              image: AssetImage('assets/ads.png')),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'اعلن لدينا',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'cairo',
                              fontSize: 18,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    )),
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
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Options()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.black.withOpacity(0.8),
                        size: 35,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'الاعدادات',
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
                        MaterialPageRoute(builder: (context) => UserStetteings()),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image(
                            width: 30,
                            height: 30,
                            image: AssetImage(
                                'assets/computer-icons-google-account-icon-design-login-png-favpng-jFjxPac6saRuDE3LiyqsYTEZM.png')),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
