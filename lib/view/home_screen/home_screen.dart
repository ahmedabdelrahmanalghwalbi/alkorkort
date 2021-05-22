import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:korkort11/view/main_page/main_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  int currentValue1 ;
  int currentValue2 ;
  bool isSelected1=false;
  bool isSelected2=false;
  bool isChoose1=true;
  bool isChoose2=true;
  AnimationController _controller;
  Animation _animation ;
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
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton =Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          }, child: Center(
          child: Text("حسنا",style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "cairo"
          ),textAlign: TextAlign.center,),
        ), style: ElevatedButton.styleFrom(
          primary: Colors.green,
        ),
        ),
        Container(width:MediaQuery.of(context).size.width/3.8,),
      ],);

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("يجب أختيار لغة الاسئلة",style: TextStyle(
          color: Colors.black,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          fontFamily: "cairo"
      ),textAlign: TextAlign.center,),
      content:Container(
        height: MediaQuery.of(context).size.height*.15,
        child: Column(
          children: [
            Text("يتم الأختيار عبر الضغط علي 'اختيار اللغة' في يسار الصفحة",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: "cairo"
            ),textAlign: TextAlign.end,),
            Text("ملحوظة: لغة الأسئلة هي اللغة اللتي ستقوم بتقديم الأمتحان بها",style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 12,
                fontFamily: "cairo"
            ),textAlign: TextAlign.end,),
          ],
        ),
      ),
      actions: [
        okButton
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height =MediaQuery.of(context).size.height;
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          width: width,
          height: height,
          child: Column(
            children: [
              //title
              Expanded(flex: 1,child:  Center(
                child: Text(
                      'أختر الفئة التي تريد دراستها',
                      style: TextStyle(
                        fontFamily: 'cairo',
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
              ),),
              //list of exams
              Expanded(flex:9,child:Container(child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Opacity(
                    opacity: isChoose1?1:0.4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 1,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ' التيوري للفئة ',
                                style:
                                TextStyle(fontFamily: 'cairo', fontSize: 20),
                              ),
                              Text(
                                '-B',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                ' سؤال 1500   ',
                                style:
                                TextStyle(fontFamily: 'cairo', fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: width,
                            height: 1,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          GestureDetector(
                            onTap: (){
                              isSelected1?setState(() {
                                isChoose1=true;
                                isChoose2=false;
                                _controller.forward();
                              }):showAlertDialog(context);
                            },
                            child: Container(
                              height: height*.2,
                              width: width*.7,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/car (1).png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    isSelected1?TextButton(onPressed: (){
                                      setState(() {
                                        isChoose1=true;
                                        isChoose2=false;
                                        _controller.forward();
                                      });
                                    }, child: Text(
                                      'اختيار',
                                      style: TextStyle(fontFamily: 'cairo',color: Colors.black),
                                    ))
                                        :TextButton(onPressed: (){
                                      showAlertDialog(context);
                                    }, child: Text(
                                      'اختيار',
                                      style: TextStyle(fontFamily: 'cairo',color: Colors.black),
                                    ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: DropdownButton(
                                  iconSize: 30,
                                  hint: Text("أختيار اللغة",style: TextStyle(fontFamily: "cairo"),),
                                  value: currentValue1,
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
                                      child: Text('swedish ',style: TextStyle(
                                          fontFamily: 'cairo',
                                          color: Colors.black
                                      ),),
                                    ),
                                  ].cast<DropdownMenuItem<int>>(),
                                  onChanged: (value) {
                                    setState(() {
                                      currentValue1 = value;
                                      isSelected1=true;
                                    });
                                    print('changed to $value');
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height*.02,),
                  Opacity(
                    opacity:isChoose2?1:0.4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 1,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ' التيوري للفئة ',
                                style:
                                TextStyle(fontFamily: 'cairo', fontSize: 20),
                              ),
                              Text(
                                '-C',
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                ' سؤال 2000   ',
                                style:
                                TextStyle(fontFamily: 'cairo', fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          GestureDetector(
                            onTap: (){
                              isSelected2?setState(() {
                                isChoose1=false;
                                isChoose2=true;
                                _controller.forward();
                              }):showAlertDialog(context);
                            },
                            child: Container(
                              height: height*.2,
                              width: width*.7,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: ExactAssetImage('assets/truck.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Row(
                                  children: [
                                    isSelected2?TextButton(child:Text(
                                      'اختيار',
                                      style: TextStyle(fontFamily: 'cairo',color: Colors.black),
                                    ),onPressed: (){
                                      setState(() {
                                        isChoose2=true;
                                        isChoose1=false;
                                        _controller.forward();
                                      });
                                    },):TextButton(onPressed: (){
                                      showAlertDialog(context);
                                    }, child: Text(
                                      'اختيار',
                                      style: TextStyle(fontFamily: 'cairo',color: Colors.black),
                                    ))
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: DropdownButton(
                                  iconSize: 30,
                                  value: currentValue2,
                                  hint: Text("أختيار اللغة",style: TextStyle(fontFamily: "cairo"),),
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
                                      child: Text('swedish ',style: TextStyle(
                                          fontFamily: 'cairo'
                                      ),),
                                    ),
                                  ].cast<DropdownMenuItem<int>>(),
                                  onChanged: (value) {
                                    setState(() {
                                      currentValue2 = value;
                                      isSelected2=true;
                                    });
                                    print('changed to $value');
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),)),
              //the choose button
              Expanded(flex:2,child:Center(
                child: AnimatedBuilder(animation: _controller, builder:(BuildContext context,Widget child){
                  return Transform(
                    transform:Matrix4.translationValues(_animation.value*width, 0, 0) ,
                    child:Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60, left: 60, bottom: 20),
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
                          width: double.infinity,
                          height: 40,
                          child: MaterialButton(
                            onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyHomePage()),
                            );
                            },
                            child: Text(
                              'تم الاختيار',
                              style: TextStyle(
                                  fontFamily: 'cairo',
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              )),
            ],
          ),
        ),
      )
    );
  }
}
