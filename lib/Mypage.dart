import 'package:dd/main.dart';
import 'package:flutter/material.dart';

import 'ProductScreen.dart';

void main() => runApp(Mypage());

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);
  void main() {
    runApp(MaterialApp(
      title: "Navigation Basics",
      home: Home(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Protect The Sea',
      home: MyStatefulWidget(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
// 탭을 이동할 때 쓸 변수!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 0.0,
            ),
            Center(
              child: Text(
                'Protect The Sea',
                style: TextStyle(
                  color: Color(0xff070404),
                  letterSpacing: 0.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 1.0,
                      color: Color(0xffc5c5c5),
                      offset: Offset(2.0, 0.0),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '검색',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xff99a1a8),
                      ),
                    ),
                    // <-
                  ),

                  style: TextStyle(fontSize: 15.0, color: Colors.black),

                  maxLines: 5, // <-- SEE HERE
                  minLines: 1, // <-- SEE HERE
                ),
                height: 49.5,
                width: 300,
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                  width: 110.0,
                ),
                Text(
                  '투데이',
                  style: TextStyle(
                      color: Color(0xff070404),
                      letterSpacing: 0.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0.0,
                  width: 35.0,
                ),
                Text(
                  '발메정보',
                  style: TextStyle(
                      color: Color(0xff070404),
                      letterSpacing: 0.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 0.0,
              width: 0.0,
            ),
            new GestureDetector(
              onTap: () {
                print("Container clicked");
              },
              child: Text(
                'New',
                style: TextStyle(
                  height: 0.0,
                  fontSize: 15.0,
                  color: Color(0xff020202),
                  letterSpacing: 2.0,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 0.0,
                  width: 0.0,
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  margin: EdgeInsets.all(5),
                  color: Color(0xffe5e5e5),
                ),
                SizedBox(
                  height: 0.0,
                  width: 0.0,
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  margin: EdgeInsets.all(5),
                  color: Color(0xffe5e5e5),
                ),
                SizedBox(
                  height: 0.0,
                  width: 0.0,
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  margin: EdgeInsets.all(5),
                  color: Color(0xffe5e5e5),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Color(0xff575656), width: 1),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 0.0,
                          width: 7.0,
                        ),
                        Text(
                          '카테고리',
                          style: TextStyle(
                              color: Color(0xff070404),
                              letterSpacing: 0.0,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Text(
                            '브랜드',
                            style: TextStyle(
                                color: Color(0xff070404),
                                letterSpacing: 0.0,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xffb0afaf), width: 2),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.all(1),
                        ),
                        Container(
                          child: Text(
                            '성별',
                            style: TextStyle(
                                color: Color(0xff070404),
                                letterSpacing: 0.0,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xffb0afaf), width: 2),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.all(1),
                        ),
                        Container(
                          child: Text(
                            '신발사이즈',
                            style: TextStyle(
                                color: Color(0xff070404),
                                letterSpacing: 0.0,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xffb0afaf), width: 2),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.all(1),
                        ),
                        Container(
                          child: Text(
                            '의류사이즈',
                            style: TextStyle(
                                color: Color(0xff070404),
                                letterSpacing: 0.0,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xffb0afaf), width: 2),
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.all(1),
                        ),
                        Container(
                          child: Text(
                            '가격',
                            style: TextStyle(
                                color: Color(0xff070404),
                                letterSpacing: 0.0,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: Color(0xffb0afaf), width: 2),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 0.0,
                  width: 0.0,
                ),
                Container(
                  width: 150.0,
                  height: 150.0,
                  margin: EdgeInsets.all(20),
                  color: Color(0xffe5e5e5),
                ),
                SizedBox(
                  height: 0.0,
                  width: 0.0,
                ),
                Container(
                  width: 150.0,
                  height: 150.0,
                  margin: EdgeInsets.all(15),
                  color: Color(0xffe5e5e5),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
