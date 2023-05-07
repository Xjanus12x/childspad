import 'package:childspad/utilities/fonts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          'Charlotte\'s Web',
          style: storyFontSTyleTitle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "The story begins on a farm in Maine where a young girl named Fern Arable saves a piglet from being killed by her father because he is the smallest of the litter. Fern raises the piglet, whom she names Wilbur, and cares for him like a pet.",
            style: storyFontSTyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          "As Wilbur grows bigger, Fern's father tells her that he must be sold to her uncle Zuckerman's farm. There, Wilbur meets the other animals on the farm, including a wise old sheep named Samuel, a talkative goose named Gussy, and a bossy rat named Templeton.",
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          'Wilbur soon learns that his fate is to be slaughtered and eaten for Christmas dinner. He is devastated, and his new friends try to come up with a plan to save him. It is then that a spider named Charlotte, who lives in the barn, steps in to help.',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          'Charlotte decides to use her web to write messages praising Wilbur, hoping to convince Mr. Zuckerman that he is special and deserves to be saved. She writes things like "Some Pig" and "Terrific" in her web, and people from all over come to see the miraculous spider and the amazing pig. ',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SixthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          'As the days go by, Charlotte\'s health deteriorates, and Wilbur becomes increasingly anxious about what will happen to him when Charlotte dies. Charlotte promises Wilbur that she will never leave him, but she knows that she is nearing the end of her lif',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SeventhPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          'Finally, Charlotte lays her eggs and dies peacefully. Wilbur is devastated, but he keeps his promise to take care of Charlotte\'s children, who hatch and fly away. Mr. Zuckerman',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
