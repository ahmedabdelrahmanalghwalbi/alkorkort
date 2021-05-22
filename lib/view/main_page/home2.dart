import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Padding(
        padding:EdgeInsets.only(top:10,left: 10,right: 10,bottom: 20),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*.8,
              child: SingleChildScrollView(
                child: Column(
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
                          'شواخص المرور',
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
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
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
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'شواخص اعطاء افضلية المرور',
                              style: TextStyle(
                                fontFamily: 'cairo',
                                fontSize: 18,
                                letterSpacing: 2,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Text(
                                        '1-ممنوع دخول كافة المركبات في اتجاه الشاخصة يسري فقط علي الاتجاه نحو الشاخصة لا يسري علي الدراجات النارية ولا الهوائية يدويا',
                                        style: TextStyle(
                                          fontFamily: 'cairo',
                                          fontSize: 12,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image(
                                  width: 70,
                                  height: 70,
                                  image: AssetImage('assets/turn-right.png'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '2- يوجد مطب',
                                  style: TextStyle(
                                    fontFamily: 'cairo',
                                    fontSize: 12,
                                    letterSpacing: 2,
                                  ),
                                ),
                                Image(
                                  width: 70,
                                  height: 70,
                                  image: AssetImage('assets/uneven.png'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '3- ممنوع الانعطاف لليمين',
                                  style: TextStyle(
                                    fontFamily: 'cairo',
                                    fontSize: 12,
                                    letterSpacing: 2,
                                  ),
                                ),
                                Image(
                                  width: 70,
                                  height: 70,
                                  image: AssetImage('assets/no-turn-right.png'),
                                ),
                              ],
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
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'اشارة المرور الضوئية',
                          style: TextStyle(
                            fontFamily: 'cairo',
                            fontSize: 18,
                            letterSpacing: 2,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*.064,
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
      ),
    );
  }
}
