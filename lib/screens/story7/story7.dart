import 'package:childspad/screens/story7/story7pages.dart';
import 'package:flutter/material.dart';

class Story7 extends StatefulWidget {
  const Story7({super.key});

  @override
  State<Story7> createState() => _Story7State();
}

class _Story7State extends State<Story7> {
  @override
  int _seletedItem = 0;
  var _pages = [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourthPage(),
    FifthPage(),
    SixthPage(),
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
