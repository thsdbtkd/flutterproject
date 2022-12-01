import 'Mypage.dart';
import 'Style.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController = PageController();
  List<Widget> pages = [HomePage(), Style(), Mypage()];

  int selectIndex = 0;
  void onPageChanged(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  void onItemTap(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfffdfdfd),
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: selectIndex == 0 ? Color(0xff8497ea) : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: selectIndex == 1 ? Color(0xff8497ea) : Colors.grey,
            ),
            label: 'Style',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: selectIndex == 2 ? Color(0xff8497ea) : Colors.grey,
            ),
            label: 'My',
          ),
        ],
      ),
    );
  }
}
