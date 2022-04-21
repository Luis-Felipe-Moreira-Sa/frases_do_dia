import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var textos = [
    "Vagando pelo mundo e buscando o meu caminho",
    "A ganância não acaba, meu desejo é infinito",
    "Pois eu quero ter mais, mais do que eu preciso",
    "O céu não é o limite, minha alma não sossega",
    "Estou sempre atrás do que o meu olho enxerga",
    "No topo da floresta, eu quero o que me espera",
    "Fonte da juventude vai me dar a vida eterna",
    "Eu quero ter tudo não importa a circunstancia",
    "Porque eu represento o pecado da ganância",
    "Escalo as montanhas percorro qualquer distância",
    "Quero até mesmo o que não tem importância"
  ];
  var _frase_gerada = "Clique para gerar refrão";

  void _mudarFrase() {
    var _numberRandom = Random().nextInt(textos.length);
    setState(() {
      _frase_gerada = textos[_numberRandom];
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Frases do Dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("android/images/logo.png"),
                Text(
                  '$_frase_gerada',
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                    onPressed: _mudarFrase,
                    child: const Text(
                      "Nova Frase",
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)))
              ]),
        )),
      );
}
