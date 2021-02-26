import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao >= 120 && pontuacao <= 135) {
      return 'Dart - Flutter';
    } else if (pontuacao >= 70 && pontuacao <= 100) {
      return 'Javascript';
    } else if (pontuacao >= 135) {
      return 'Python ou GoLang';
    } else if (pontuacao >= 200) {
      return 'C# ou Java';
    } else {
      return 'Parabéns!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28, color: Colors.tealAccent[700]),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all<Color>(Colors.tealAccent[700]),
          ),
          child: Text(
            'Reiniciar?',
            style: TextStyle(color: Colors.tealAccent[400]),
          ),
          onPressed: quandoReiniciarQuestionario,
        )

        /*FlatButton(
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.tealAccent[700],
          onPressed: quandoReiniciarQuestionario,
        )*/
      ],
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.blue,
        ),
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.red,
        ),
      ],
    );
  }
}
