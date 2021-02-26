import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      //'texto': 'Qual linguagem devo iniciar?',
      'respostas': [
        {'texto': 'INICIAR', 'pontuacao': 0},
      ],
    },
    {
      //'texto': 'Tipo de tipagem?',
      'respostas': [
        {'texto': 'Tipagem Forte', 'pontuacao': 100},
        {'texto': 'Tipagem Fraca', 'pontuacao': 50},
      ],
    },
    {
      //'texto': 'Qual área voce deseja se especializar?',
      'respostas': [
        {'texto': 'Machine Learning', 'pontuacao': 30},
        {'texto': 'Desenvolvimento Web', 'pontuacao': 25},
        {'texto': 'Desenvolvimento Mobile', 'pontuacao': 20},
        {'texto': 'Desenvolvimento de Jogos', 'pontuacao': 100},
      ],
    },
    {
      //'texto': 'Escolha uma alternativa abaixo?',
      'respostas': [
        {'texto': 'Otimizacao', 'pontuacao': 10},
        {'texto': 'Qualidade', 'pontuacao': 5},
        {'texto': 'Features', 'pontuacao': 3},
        {'texto': 'Cross-Plataforms', 'pontuacao': 1},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.tealAccent[700],
          title: Text(
            'PROGRAMADOR INICIANTE',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
