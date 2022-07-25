import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SecondJoin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Do You Like',
      home: Join(),
    );
  }
}

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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
          onPressed: (){}
        ),
        actions: <Widget>[
          TextButton(
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (BuildContext context)=>SecondJoin()));
              },
            child: Text('다음', style: TextStyle(fontSize: 17.5),),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          )
        ],
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
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: 'ID'
                                        ),
                                        keyboardType: TextInputType.text ,
                                      ),
                                  ),
                                  SizedBox(width: 5.0),
                                  OutlinedButton(
                                    child: Text('인증'),
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
                              ),
                            ),
                            SizedBox(height: 15.0),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: '비밀번호'
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(height: 15.0),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: '비밀번호 재입력'
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                            labelText: '전화번호'
                                        ),
                                        keyboardType: TextInputType.number,
                                      ),
                                  ),
                                  SizedBox(width: 5.0),
                                  OutlinedButton(
                                    child: Text('인증'),
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