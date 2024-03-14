import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttuando',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          background: const Color.fromARGB(255, 233, 239, 223),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Fluttuando'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _result = 'resultado:';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Crie uma função que inicialize dois valores inteiros (A e B). Como resultado, mostre
  // na tela qual é o maior valor.

  void _desafio1() {
    int valorA = 10;
    int valorB = 20;

    if (valorA > valorB) {
      _result = 'O valor A é maior';
    } else if (valorA < valorB) {
      _result = 'O valor B é maior';
    } else {
      _result = 'Os valores são iguais';
    }

    setState(() {
      _result.toString();
    });
  }

  //Crie uma função que inicialize os valores de A, B, C. Como resultado, mostre na tela a
  //soma entre A e B e se a soma é maior ou menor do que C

  void _desafio2() {
    int valorA = 10;
    int valorB = 10;
    int valorC = 25;
    int soma = valorA + valorB;

    setState(() {
      if (soma > valorC) {
        _result =
            'valorA[$valorA]\nvalorB[$valorB]\nvalorC[$valorC]\nSoma de A+B = [$soma]\n A+B é maior que C';
      } else if (soma < valorC) {
        _result =
            'valorA[$valorA]\nvalorB[$valorB]\nvalorC[$valorC]\nSoma de A+B = [$soma]\n A+B é menor que C';
      } else {
        _result =
            'valorA[$valorA]\nvalorB[$valorB]\nvalorC[$valorC]\nSoma de A+B = [$soma]\n A+B é igual a C';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Desafio 2:',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
                letterSpacing: 1.5,
                wordSpacing: 2.0,
              ),
            ),
            Text(
              _result,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 204, 18, 18),
                shadows: [
                  Shadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(4, 4), // Deslocamento da sombra
                  ),
                ],
                decoration: TextDecoration.underline, // Adiciona sublinhado
                decorationColor:
                    const Color.fromARGB(255, 63, 7, 51), //sublinHado
                decorationThickness: 0.3, // Espessura
                decorationStyle:
                    TextDecorationStyle.double, //duas linhas de baixo
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _desafio2,
        tooltip: '_desafio2',
        child: const Icon(FontAwesomeIcons.rocket),
      ),
    );
  }
}
