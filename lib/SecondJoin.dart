import 'package:flutter/material.dart';
import 'ThirdJoin.dart';

class  SecondJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('프로필 입력', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
          actions: <Widget>[
            TextButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (BuildContext context)=>ThirdJoin()));
              },
              child: Text('다음', style: TextStyle(fontSize: 17.5),),
              style: TextButton.styleFrom(
                primary: Colors.black,
              ),
            )
          ],
        ),
        body: ListView(
          children:[ GestureDetector(
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
                                TextField(
                                  decoration: InputDecoration(
                                  labelText: '이름'
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
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '성별'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '나이'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '닉네임'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '지역'
                                  ),
                                  keyboardType: TextInputType.text,
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
                                      labelText: '키'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '체형'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '직업'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '흡연'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '음주'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '종교'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '혈액형'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '성격'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  decoration: InputDecoration(
                                      labelText: '취미'
                                  ),
                                  keyboardType: TextInputType.text,
                                ),
                              ],
                            ),
                          ),
                      ),
                  ),
                ],
              ),
            ),
          ),
          ],
        ),
    );
  }
}