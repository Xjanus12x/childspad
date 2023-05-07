import 'package:childspad/utilities/fonts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 245, 234),
      body: Center(
        child: Text(
          "The Old Cat's Wisdom: A Story of Trust and Courage",
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
            "Snowy was a bright and energetic cat who lived in a busy city. He loved to explore and discover new things, but he had trust issues that held him back. Snowy had been betrayed in the past by a friend who had promised to protect him but instead exposed him to danger. Ever since that experience, Snowy had a hard time trusting anyone, including other cats and even humans. He kept to himself and refused to let anyone get close to him.",
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
          "Snowy's trust issues often held him back from trying new things and enjoying life to the fullest. He would worry about what could go wrong or what dangers might be lurking around the corner. His trust issues made him feel overwhelmed by the world around him. He longed to be able to trust again and enjoy the world without fear.",
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
          'The old cat listened patiently and then shared a story with Snowy. The story was about a young cat like him who was afraid of trusting others. The young cat had a strong desire to explore the world, but his fear kept him scared. One day, the young cat decided to face his fear, even though he was afraid. He was surprised to discover that trusting others again was not as scary as he had imagined, and he felt a sense of freedom and joy again that he knew before.',
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
          'Over time, Snowy\'s trust issues began to fade. He learned to trust humans, and the other cats in the area began to see the value in his caution and wait patiently for him to start trusting others. They no longer laughed at him for being hesitant, but instead respected him for his courage and perseverance.',
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
          'The moral of the story is that trust issues can be very difficult to overcome, especially when they stem from past experiences. However, with patience and understanding, it\'s possible to help someone overcome their fears and learn to trust again. It\'s important not to judge someone based on their past experiences and to give them a chance to show their true character. Snowy\'s story is a testament to the power of resilience and the strength of the human spirit to overcome even the most challenging obstacles.',
          style: storyFontSTyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
