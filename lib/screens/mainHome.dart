import 'package:childspad/Service.dart';
import 'package:childspad/screens/story1/story1.dart';
import 'package:childspad/screens/story2/story2.dart';
import 'package:childspad/screens/story3/story3.dart';
import 'package:childspad/screens/story4/story4.dart';
import 'package:childspad/screens/story5/story5.dart';
import 'package:childspad/screens/story6/story6.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/placeholder.dart';

import '../utilities/colors.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  static int currenUserAge = Service.currentUserAge;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 5.0, // Adjust the width as needed
                color: Colors.black, // Adjust the color as needed
              ),
            ),
          ),
          child: Text(
            'New Stories for you',
            style: TextStyle(
                fontSize: 20.0, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Adjust the font weight as needed
                color: txtColor1),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
          visible: currenUserAge >= 1 &&
              currenUserAge <= 6, // replace `age` with your actual condition
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Story1()),
                  );
                },
                child: Image.asset(
                  'images/ant-story.jpg',
                  width: 150,
                  height: 150, // set the desired width
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Story2()),
                  );
                },
                child: Image.asset(
                  'images/story2.png',
                  width: 150, // set the desired width
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Story3()),
                  );
                },
                child: Image.asset(
                  'images/story3.png',
                  width: 150, // set the desired width
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Visibility(
          visible: currenUserAge >= 7 && currenUserAge <= 12,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Story4()),
                  );
                },
                child: Image.asset(
                  'images/story4.png',
                  width: 150,
                  height: 150, // set the desired width
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Story5()),
                  );
                },
                child: Image.asset(
                  'images/story5.png',
                  width: 150, // set the desired width
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Story6()),
                  );
                },
                child: Image.asset(
                  'images/story6.png',
                  width: 150, // set the desired width
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
