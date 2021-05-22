import 'package:flutter/material.dart';
import 'package:korkort11/quiz//services/database.dart';
import 'package:korkort11/quiz//widget/widget.dart';
import 'package:korkort11/view/main_page/home1.dart';

class AddQuestion extends StatefulWidget {

  final String quizId;
  AddQuestion(this.quizId);

  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  DatabaseService databaseService = new DatabaseService();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  String question = "", option1 = "", option2 = "", option3 = "", option4 = "";

  uploadQuizData() {

    if (_formKey.currentState.validate()) {

      setState(() {
        isLoading = true;
      });

      Map<String, String> questionMap = {
        "question": question,
        "option1": option1,
        "option2": option2,
        "option3": option3,
        "option4": option4
      };

      print("${widget.quizId}");
      databaseService.addQuestionData(questionMap, widget.quizId).then((value) {
        question = "";
        option1 = "";
        option2 = "";
        option3 = "";
        option4 = "";
        setState(() {
          isLoading = false;
        });

      }).catchError((e){
        print(e);
      });
    }else{
      print("error is happening ");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text("اضافة أسألة الأختبار",style: TextStyle(
            color: Colors.black,
            fontFamily: "cairo"
        ),),
        brightness: Brightness.light,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        //brightness: Brightness.li,
      ),
      body: isLoading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : SingleChildScrollView(
            child: Container(
        width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.9,
              child: Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (val) => val.isEmpty ? "Enter Question" : null,
                          decoration: InputDecoration(hintText: "السؤال",hintStyle: TextStyle(
                            fontFamily: "cairo"
                          ),
                          ),
                          onChanged: (val) {
                            question = val;
                          },
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? "Option1 " : null,
                          decoration:
                              InputDecoration(hintText: "الأختيار الأول (ضع هنا الأجابة الصحيحة)",hintStyle: TextStyle(
                                  fontFamily: "cairo"
                              ),),
                          onChanged: (val) {
                            option1 = val;
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? "Option2 " : null,
                          decoration: InputDecoration(hintText: "الأختيار الثاني",hintStyle: TextStyle(
                              fontFamily: "cairo"
                          ),),
                          onChanged: (val){
                           option2 = val;
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? "Option3 " : null,
                          decoration: InputDecoration(hintText: "الأختيار الثالث",hintStyle: TextStyle(
                              fontFamily: "cairo"
                          ),),
                          onChanged: (val){
                            option3 = val;

                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          validator: (val) => val.isEmpty ? "Option4 " : null,
                          decoration: InputDecoration(hintText: "الأختيار الرابع",hintStyle: TextStyle(
                              fontFamily: "cairo"
                          ),),
                          onChanged: (val){
                            option4 = val;
                          },
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home1()));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 2 - 20,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 20),
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "ارسال الأسئلة",
                                  style:
                                      TextStyle(fontSize: 16, color: Colors.white,fontFamily: "cairo"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                uploadQuizData();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 2 - 40,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 20),
                                decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  "أضافة السؤال",
                                  style:
                                      TextStyle(fontSize: 16, color: Colors.white,fontFamily: "cairo"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ),
    );
  }
}
