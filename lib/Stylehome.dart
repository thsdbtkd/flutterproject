import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(Stylehome());

class Stylehome extends StatelessWidget {
  const Stylehome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Protect The Sea',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                },
                child: Icon(
      Icons.keyboard_arrow_left,
    ),
              ),
              width: 20.0,
              height: 25.0,
              margin: EdgeInsets.all(0),
              color: Color(0xffa1a0a0),
            ),
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
            Container(
              width: double.infinity,
              height: 110.0,
              margin: EdgeInsets.all(0),
              color: Color(0xffa1a0a0),
            ),
            SizedBox(
              height: 4.0,
              width: 0.0,
            ),
            Row(
              children: <Widget>[
                
                SizedBox(
                  width: 50.0,
                  height: 5.0,
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
                              width: 60.0,
                    
                  height: 50.0,
                    color: Color(0xffa1a0a0),
                              ),
                              SizedBox(
                  width: 100.0,
                  height: 5.0,
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
                              width: 60.0,
                    
                  height: 50.0,
                    color: Color(0xffa1a0a0),
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
                              width: 60.0,
                    
                  height: 50.0,
                    color: Color(0xffa1a0a0),
                              ),
                              
                  
                  ],
            ),
          ],
        ),
      ),
    );
  }
}
