import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Seved extends StatelessWidget {
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
          'العناصر المحفوظة',
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
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'جديدة',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "cairo",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
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
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Text(
                                'اين يجب ان يكون موضع سيارتك عندما',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'تلتقي في سارة اخري في الظلام',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: 150,
                          child: Image(
                            height: double.infinity,
                            image: AssetImage('assets/77.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
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
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Text(
                                'اين يجب ان يكون موضع سيارتك عندما',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'تلتقي في سارة اخري في الظلام',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: 150,
                          child: Image(
                            height: double.infinity,
                            image: AssetImage('assets/77.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'الاقدم',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "cairo",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
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
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Text(
                                'اين يجب ان يكون موضع سيارتك عندما',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'تلتقي في سارة اخري في الظلام',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "cairo",
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: 150,
                          child: Image(
                            height: double.infinity,
                            image: AssetImage('assets/77.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
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
