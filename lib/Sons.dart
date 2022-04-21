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
      children: const [
        CardSom(
          url: 'ui-rodrigo-faro.mp3',
          name: 'UUUUUUUUI!',
          isAsset: true,
        ),
        CardSom(
          url: 'bob-esponja.mp3',
          name: 'bob esponja',
          isAsset: true,
        ),
      ],
    );
  }
}
