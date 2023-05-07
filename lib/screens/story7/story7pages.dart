import 'package:childspad/utilities/fonts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          "Brave Mouse",
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
            "Once upon a time, there was a little mouse named Max. Max loved to explore and play, but he was always afraid of the big, scary cat that lived in the house.",
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
          "One day, Max was playing with his friends when he saw the cat coming towards them. They all ran away, but Max was too scared and froze in fear. The cat approached him slowly, but just as it was about to pounce, Max had an idea.",
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
          'One day, Snowy met a wise old cat who had lived many years and seen many things. Snowy confided in the old cat about his problem and how it was holding him back from living her life to the fullest. He told the story of how his friend, Nyangnyang, had betrayed him. Nyangnyang took Snowy\'s kindness for granted and always shared his secrets with others. When Snowy discovered what Nyangnyang was doing, he resented him.',
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
          'He quickly stood up on his hind legs and started to roar like a lion! The cat was so surprised that it stumbled backwards and ran away. Max\'s friends were amazed and asked him where he learned to roar like a lion. Max just smiled and said, "I didn\'t learn it anywhere. I just pretended to be brave, and it worked!"',
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
          'From that day on, Max wasn\'t afraid of the cat anymore. He knew that sometimes, all it takes is a little bit of courage and imagination to overcome your fears.',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
