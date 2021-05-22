import 'package:flutter/material.dart';
import 'package:korkort11/view/main_page/home1.dart';
import 'package:korkort11/view/main_page/home2.dart';
import 'package:korkort11/view/main_page/home3.dart';
import 'package:korkort11/view/main_page/home4.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Home1(),
    Home2(),
    Home3(),
    Home4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.brown[50],
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'الرئيسية',
                  style: TextStyle(
                    fontFamily: 'cairo',
                    fontSize: 12,
                  ),
                )),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/alert 1.png')),
              title: Text(
                'شواخص المرور',
                style: TextStyle(
                  fontFamily: 'cairo',
                  fontSize: 12,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/process.png')),
              title: Text(
                'خطوات التقديم',
                style: TextStyle(
                  fontFamily: 'cairo',
                  fontSize: 12,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: Text(
                'المزيد',
                style: TextStyle(
                  fontFamily: 'cairo',
                  fontSize: 12,
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.red,
          onTap: _onItemTapped,
          // selectedItemColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
