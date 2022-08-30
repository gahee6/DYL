import 'package:flutter/material.dart';
import 'SecondJoin.dart';

class Join extends StatefulWidget {
  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('회원가입', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Form(
                    child: Theme(
                        data: ThemeData(
                            inputDecorationTheme: InputDecorationTheme(
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                )
                            )
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 15.0),
                              Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                              labelText: '닉네임'
                                          ),
                                          keyboardType: TextInputType.text,
                                        ),
                                      ),
                                      SizedBox(width: 5.0),
                                      OutlinedButton(
                                        child: Text('중복확인'),
                                        onPressed: (){},
                                        style: OutlinedButton.styleFrom(
                                            primary: Colors.green,
                                            minimumSize: Size(70, 40),
                                            side: BorderSide(
                                              color: Colors.green,
                                              width: 1.0,
                                            )
                                        ),
                                      )
                                    ],
                                  )
                              ),
                              SizedBox(height: 15.0),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: '학과'
                                ),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(height: 15.0),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: '학번'
                                ),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(height: 15.0),
                              //DropButton
                              TextField(
                                decoration: InputDecoration(
                                    labelText: '성별'
                                ),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(height: 15.0),
                              //나이 대신 출생년도
                              TextField(
                                decoration: InputDecoration(
                                    labelText: '나이'
                                ),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(height: 15.0),
                              OutlinedButton(
                                child: Text('회원가입'),
                                onPressed: (){

                                },
                                style: OutlinedButton.styleFrom(
                                    primary: Colors.green,
                                    minimumSize: Size(70, 40),
                                    side: BorderSide(
                                      color: Colors.green,
                                      width: 1.0,
                                    )
                                ),
                              )
                            ],
                          ),
                        ))
                )
              ],
            ),
          ),
        )
    );
  }
}