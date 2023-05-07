import 'package:childspad/utilities/fonts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          'The Lorax (Classic Seuss)',
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
            "a young boy living in a polluted and dreary town visits the Once-ler, a reclusive and mysterious figure who lives in a derelict tower on the outskirts of town. The boy asks the Once-ler about the strange and enigmatic creature known as the Lorax, which the Once-ler had mentioned before.",
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
          "The Once-ler begins to tell the boy a story about his past and how he came to meet the Lorax. He explains that he arrived in a beautiful, pristine valley filled with colorful Truffula trees, which he discovered could be used to create a versatile garment called a Thneed. The Once-ler sets up a factory to mass-produce Thneeds, and begins chopping down the Truffula trees to meet the high demand.",
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
          'The Lorax, a small, orange creature with a big mustache, speaks for the trees and tries to persuade the Once-ler to stop cutting them down. However, the Once-ler ignores the Lorax\'s warnings and continues to chop down the trees, despite their dwindling numbers.',
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
          'As the Once-ler\'s business grows, he becomes increasingly greedy and reckless, chopping down more and more trees to meet the growing demand for Thneeds. The Lorax becomes increasingly concerned about the destruction of the Truffula trees and the impact it is having on the environment.',
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
          'One by one, the Truffula trees disappear, and the valley becomes a barren wasteland. The animals that once lived in the forest are forced to leave, and the Once-ler\'s factory shuts down as there are no more trees to cut down. The Lorax also leaves, but not before warning the Once-ler of the dire consequences of his actions.',
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
          'Feeling remorseful for his role in destroying the valley and its inhabitants, the Once-ler gives the young boy the very last Truffula seed and implores him to plant it, in the hopes of bringing back the forest and its inhabitants. The Once-ler leaves, leaving the boy to ponder the story and the lessons it contains.',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

