import 'package:childspad/screens/story6/story6pages.dart';
import 'package:flutter/material.dart';

class Story6 extends StatefulWidget {
  const Story6({super.key});

  @override
  State<Story6> createState() => _Story6State();
}

class _Story6State extends State<Story6> {
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
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home), title: Text('Home')),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.photo), title: Text('Photos')),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle), title: Text('Profile'))
      //   ],
      //   currentIndex: _seletedItem,
      //   onTap: (index) {
      //     setState(() {
      //       _seletedItem = index;
      //       _pageController.animateToPage(_seletedItem,
      //           duration: Duration(milliseconds: 200), curve: Curves.linear);
      //     });
      //   },
      // ),
    );
  }
}
