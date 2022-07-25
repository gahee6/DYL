import 'package:flutter/material.dart';
import 'FourthJoin.dart';

class ThirdJoin extends StatelessWidget {
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
                      builder: (BuildContext context)=>FourthJoin()));
            },
            child: Text('다음', style: TextStyle(fontSize: 17.5),),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          )
        ],
      ),
      body: Center(
        child: Text('사진 받는 페이지'),
      ),
    );
  }
}