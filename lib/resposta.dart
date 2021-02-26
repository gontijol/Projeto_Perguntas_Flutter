import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.tealAccent[700]),
        ),
        child: Text(texto, style: TextStyle(color: Colors.black)),
        onPressed: quandoSelecionado,
      ),
      /*RaisedButton(
        textColor: Colors.white,
        color: Colors.tealAccent[700],
        child: Text(texto),
        onPressed: quandoSelecionado,*/
    );
  }
}
