import 'package:flutter/material.dart';
import 'cardSom.dart';

class Sons extends StatelessWidget {
  const Sons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 1,
        crossAxisCount: 2,
      ),
      children: [
        CardSom(
          url: 'ui-rodrigo-faro.mp3',
          name: 'UUUUUUUUI!',
        ),
        CardSom(
          url: 'xii.mp3',
          name: 'XIIIIIII',
        ),
        CardSom(
          url: 'rapaz.mp3',
          name: 'RAPAAAZ',
        ),
        CardSom(
          url: 'vixe.mp3',
          name: 'VIIIXE',
        ),
        CardSom(
          name: 'Ai ki diliça',
          url: 'ai-que-delicia.mp3',
        ),
        
      ],
    );
  }
}
