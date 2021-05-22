import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.user,
          color: Colors.transparent,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        centerTitle: true,
        title: Text(
          'مقاطع تعليمية',
          style: TextStyle(
            fontFamily: 'cairo',
            fontSize: 22,
            color: Colors.black,
            letterSpacing: 2,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.brown[50],
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text(
                                  'اين يجب ان يكون موضع سيارتك عندما',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "cairo",
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'تلتقي في سارة اخري في الظلام',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "cairo",
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(
                                  'assets/77.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: ImageIcon(
                                AssetImage(
                                  'assets/play-button.png',
                                ),
                                color: Colors.white60),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Text(
                                  'اين يجب ان يكون موضع سيارتك عندما',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "cairo",
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'تلتقي في سارة اخري في الظلام',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "cairo",
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(
                                  'assets/77.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: ImageIcon(
                                AssetImage(
                                  'assets/play-button.png',
                                ),
                                color: Colors.white60),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.07,
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
                      shadows: [Shadow(blurRadius: 3, color: Colors.black45)]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
