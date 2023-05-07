import 'package:childspad/screens/story1/story1pages.dart';
import 'package:flutter/material.dart';

class Story1 extends StatefulWidget {
  const Story1({super.key});

  @override
  State<Story1> createState() => _Story1State();
}

class _Story1State extends State<Story1> {
  @override
  int _seletedItem = 0;
  var _pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
    FifthPage()
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
