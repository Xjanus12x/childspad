import 'package:childspad/screens/story5/story5pages.dart';
import 'package:flutter/material.dart';

class Story5 extends StatefulWidget {
  const Story5({super.key});

  @override
  State<Story5> createState() => _Story5State();
}

class _Story5State extends State<Story5> {
  @override
  int _seletedItem = 0;
  var _pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
    FifthPage(),
    SixthPage(),
    SeventhPage(),
    EighthPage(),
    NinethPage()
  ];
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _seletedItem = index;
          });
        },
        controller: _pageController,
      ),
      
    );
  }
}
