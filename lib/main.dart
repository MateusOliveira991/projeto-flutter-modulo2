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

  void _incrementCounter() {
    setState(() {
      _counter++;
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text(
              'Cada click \né um passo à diante \nrumo ao objetivo:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.blue,
                letterSpacing: 1.5,
                wordSpacing: 2.0,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 50,
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
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(FontAwesomeIcons.rocket),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
