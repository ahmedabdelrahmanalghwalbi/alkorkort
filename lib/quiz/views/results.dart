import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:korkort11/quiz/views/home.dart';
import 'package:korkort11/view/main_page/home1.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Results extends StatefulWidget {
  final int total, correct, incorrect, notattempted;
  String quizId;
  Results({this.incorrect, this.total, this.correct, this.notattempted,this.quizId});

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("نتائج الأختبار",style: TextStyle(
            color: Colors.black,
            fontFamily: "cairo"
        ),),
        brightness: Brightness.light,
        elevation: 0.4,
        backgroundColor: Colors.deepOrange,
        //brightness: Brightness.li,
      ),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Center(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        widget.correct>widget.incorrect?Text("ناجح", style: TextStyle(fontSize: 30,fontFamily: "cairo",color: Colors.green),):Text("راسب", style: TextStyle(fontSize: 30,fontFamily: "cairo",color: Colors.red),),
                        Text("النتيجة النهائية", style: TextStyle(fontSize: 30,fontFamily: "cairo"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CircleAvatar(radius:60,backgroundColor: Colors.deepOrange,
                        child: Text("${widget.correct}/ ${widget.total}", style: TextStyle(fontSize: 33,color: Colors.white,fontFamily: "cairo",fontWeight: FontWeight.bold),)),
                    SizedBox(height: 15,)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:10.0,right:10),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${widget.correct}", style: TextStyle(fontSize: 30,fontFamily: "cairo",color: Colors.green),),
                      Text("الأجابات الصحيحة", style: TextStyle(fontSize: 30,fontFamily: "cairo",color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:10.0,right:10),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${widget.incorrect}", style: TextStyle(fontSize: 30,fontFamily: "cairo",color: Colors.red),),
                      Text("الأجابات الخاطئة", style: TextStyle(fontSize: 30,fontFamily: "cairo",color: Colors.black),),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 20,),
              GestureDetector(
                onTap: ()async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  if(widget.correct > widget.incorrect){
//                    FirebaseFirestore.instance
//                        .collection('Quiz').doc(widget.quizId).update({
//                      "status":"passed"
//                    }).then((value) => print("xxxxxxxxxxx quiz status changed to passed successfully")).catchError((ex)=>print("xxxxxxxxxxxxxxxxxxxx error in changing exam status to successfully"));
                      final FirebaseAuth auth = FirebaseAuth.instance;
                     final userId = await auth.currentUser.uid;
                     print("ooooooooooooooooo => this is the current user id is ${userId}");
                      await FirebaseFirestore.instance
                          .collection("Results")
                          .add({
                        "userId":userId,
                        "quizId":widget.quizId,
                        "status":"passed"
                      }).then((value){
                        print("xxxxxxxxxxxxxxxxxxxxxx the result passed added successfully");
                        print(value);
                      }).catchError((e) {
                        print("xxxxxxxxxxxxxxxxxxxxxx failed to add the result passed ${e}");
                      });
                  }else{
//                    FirebaseFirestore.instance
//                        .collection('Quiz').doc(widget.quizId).update({
//                      "status":"failed"
//                    }).then((value) => print("xxxxxxxxxxx quiz status changed to failed successfully")).catchError((ex)=>print("xxxxxxxxxxxxxxxxxxxx error in changing exam status to failed"));
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final userId = await auth.currentUser.uid;
                    print("ooooooooooooooooo => this is the current user id is ${userId}");
                    await FirebaseFirestore.instance
                        .collection("Results")
                        .add({
                      "userId":userId,
                      "quizId":widget.quizId,
                      "status":"failed"
                    }).then((value){
                      print("xxxxxxxxxxxxxxxxxxxxxx the result failed added successfully");
                      print(value);
                    }).catchError((e) {
                      print("xxxxxxxxxxxxxxxxxxxxxx failed to add the result failed ${e}");
                    });
                  }
//                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home1()));
                Navigator.pop(context);
                },
                child: Padding(
                  padding:  EdgeInsets.all(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.deepOrange,width: 2)
                    ),
                    child: Center(child: Text("عرض الأسئلة والأجابات", style: TextStyle(color: Colors.deepOrange, fontSize: 20,fontFamily: "cairo"),)),
                  ),
                ),
              )
          ],),
        ),
      ),
    );
  }
}
