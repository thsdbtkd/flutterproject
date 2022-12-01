import 'package:flutter/material.dart';

void main() => runApp(Style());

class Style extends StatelessWidget {
  const Style({Key? key}) : super(key: key);

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
      backgroundColor: Color(0xff070711),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(25.0),
        child: AppBar(
          backgroundColor: Color(0xff1e00a4),
          centerTitle: true,
          elevation: 10.0,
        ),
      ),
      body:Padding(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'Protect The Sea',
                  style: TextStyle(
                      color: Color(0xff070404),
                      letterSpacing: 0.0,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              width: double.infinity,
              height: 70.0,
              margin: EdgeInsets.all(0),
              color: Colors.white,
            ),
              
              
              
              
              
            Container(
                child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
           
        ),
              width: double.infinity,
              height: 110.0,
              margin: EdgeInsets.all(0),
              color: Colors.white,
            ),
            SizedBox(
              height: 40.0,
              width: 0.0,
            ),
            Center(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'I',
                  ),
                ),
                height: 46.0,
                width: 250.0,
                margin: EdgeInsets.all(0),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 19.0,
              width: 0.0,
            ),
            Center(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                height: 46.0,
                width: 250.0,
                margin: EdgeInsets.all(0),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 0.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 15.0,
                  height: 5.0,
                ),
                new GestureDetector(
                  onTap: () {
                    print("Container clicked");
                  },
                  child: new Container(
                    height: 20.0,
                    width: 20.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                  width: 30.0,
                ),
                new GestureDetector(
                  onTap: () {
                    print("Container clicked");
                  },
                  child: Text(
                    'Remember Password',
                    style: TextStyle(
                      height: 0.0,
                      fontSize: 15.0,
                      color: Colors.blue,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
              width: 0.0,
            ),
            Center(
              child: new FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "YourRoute");
                },
                child: new Text(
                  "Did you forget your password?",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: new FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "YourRoute");
                },
                child: new Text(
                  'join membership',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0.0,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 15.0,
                  height: 120.0,
                ),
                new GestureDetector(
                  onTap: () {
                    print("Container clicked");
                  },
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff), shape: BoxShape.circle),
                    child: Text('구글'),
                  ),
                ),
                SizedBox(
                  width: 0.0,
                  height: 0.0,
                ),
                new GestureDetector(
                  onTap: () {
                    print("Container clicked");
                  },
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff), shape: BoxShape.circle),
                    child: Text('에플'),
                  ),
                ),
                SizedBox(
                  width: 0.0,
                  height: 0.0,
                ),
                new GestureDetector(
                  onTap: () {
                    print("Container clicked");
                  },
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff), shape: BoxShape.circle),
                    child: Text('네이버'),
                  ),
                ),
                SizedBox(
                  width: 0.0,
                  height: 0.0,
                ),
                new GestureDetector(
                  onTap: () {
                    print("Container clicked");
                  },
                  child: Container(
                    height: 70.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                        color: Color(0xffffffff), shape: BoxShape.circle),
                    child: Text('게스트'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
