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
          url: 'tavares.mp3',
          name: 'Eai',
        ),
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
            name: 'Tome',
        ),
        CardSom(
            url: 'uepa.mp3',
            name: 'UEPAA',
        ),
        CardSom(
            url: 'som-intendivel.mp3',
            name: 'AHUURR AH BHRUAH',
        ),
        CardSom(
            url: 'pressao.mp3',
            name: 'Sente a pressão',
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
            url: 'ao-potencia',
            name: 'AOO POTÊNCIA',
        ),
        CardSom(
            url: 'jesus.mp3',
            name: 'JEESUS',
        ),
        CardSom(
            url: 'cala-boca.mp3',
            name: 'CALA BOCA',
        ),
        CardSom(
            url: 'viadao-bonito.mp3',
            name: 'Viadão Bonito',
        ),
        CardSom(
            url: 'jukera.mp3',
            name: 'TAPORRA',
        ),
        CardSom(
            url: 'danca-gatinho',
            name: 'Dança Gatinho, Dança',
        ),
        CardSom(
            url: 'iha.mp3',
            name: 'IIIIIHÁÁÁ',
        ),
        CardSom(
            url: 'ratinhoo.mp3',
            name: 'RATINHOOO',
        ),
        CardSom(
            url: 'rojao.mp3',
            name: 'Rojão (use com cuidado)',
        ),
        CardSom(
            url: 'risada-ladrao.mp3',
            name: 'Risada de Ladrão',
        ),
        CardSom(
            url: 'bob-esponja.mp3',
            name: 'Bob esponja',
        ),
        CardSom(
            url: 'cavalo.mp3',
            name: 'Cavalo',
        ),
        CardSom(
            url: 'olha-a-pedra.mp3',
            name: 'OLHA A PEDRA',
        ),
        CardSom(
            url: 'chapa.mp3',
            name: 'Oi meu chapa',
        ),
        CardSom(
            url: 'chaves.mp3',
            name: 'Chaves',
        ),
        CardSom(
            url: 'errou.mp3',
            name: 'ERRROU',
        ),
        CardSom(
            url: 'head-shake.mp3',
            name: 'corridinha',
        ),
        CardSom(
            url: 'metal-gear.mp3',
            name: 'Alerta',
        ),
        CardSom(
            url: 'pegando-fogo.mp3',
            name: 'TA PEGANDO FOGO BIXO',
        ),
        CardSom(
            url: 'to-be.mp3',
            name: 'To be continued',
        ),
        CardSom(
            url: 'peao.mp3',
            name: 'Pião do baú',
        ),
        CardSom(
            url: 'gemidasso.mp3',
            name: '?',
        ),
        CardSom(
            url: 'yamete.mp3',
            name: '?',
        ),
      ],
    );
  }
}
