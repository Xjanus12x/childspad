import 'package:childspad/utilities/fonts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          'The Cat in the Hat',
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
            "On a rainy day, Sally and her brother are bored, stuck inside the house with nothing to do. Their mother is out, and they are left alone to entertain themselves. Suddenly, a tall, mischievous cat wearing a red and white striped hat appears at the door. He introduces himself as \"The Cat in the Hat\" and offers to show the children a variety of games and tricks to play.",
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
          "The Cat begins his entertainment by balancing a series of household objects on the tip of his tail. He then introduces the children to his helpers, Thing One and Thing Two, two mischievous creatures who emerge from a box. Things start to create chaos in the house, making a mess with kites, books, and a game of \"Fun-in-a-Box.\"",
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
          'The children start to become worried about the mess they are making and the possibility of their mother coming home and seeing the house in disarray. Their pet fish tries to intervene and warn the children about the danger of the Cat and the Things, but they ignore him.',
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
          'The Cat then produces a machine called the "Dynamic Electric Slicer-Upper," which he uses to slice a hole in the living room\'s rug, causing the fish to fall through it. The children become even more worried, but the Cat reassures them that everything is under control.',
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
          'Just as things are getting out of hand, the children hear their mother\'s key in the door. The Cat quickly announces that he has one more trick up his sleeve and uses a large red umbrella to clean up the mess in the house. The children are amazed at how quickly everything is back to normal.',
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
          'As their mother walks in the door, the Cat and the Things disappear, leaving the children to contemplate the events of the day. In the end, the children decide to keep the day\'s events a secret, promising each other to never tell anyone about the Cat in the Hat, Thing One, and Thing Two.',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class EighthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          '"The Cat in the Hat" is a classic children\'s book that has become beloved for its zany characters, lively illustrations, and humorous story.',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
