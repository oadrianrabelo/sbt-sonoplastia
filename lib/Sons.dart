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
          url: 'ai-que-delicia.mp3',
          name: 'Ai ki diliça',
        ),
        CardSom(
          url: 'pare.mp3',
          name: 'PARE',
        ),
        CardSom(
            url: 'tome.mp3',
            name: 'tome',
        ),
        CardSom(
            url: 'atumalaca.mp3',
            name: 'Atumalaca',
        ),
        CardSom(
            url: 'bem-te-vi.mp3',
            name: 'Bem te vi',
        ),
        CardSom(
            url: 'cala-boca.mp3',
            name: 'CALA BOCA',
        ),
        CardSom(
            url: 'jukera.mp3',
            name: 'TAPORRA',
        ),
        CardSom(
            url: 'tavares.mp3',
            name: 'Eai',
        ),
      ],
    );
  }
}
