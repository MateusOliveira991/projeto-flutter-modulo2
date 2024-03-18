import 'dart:math';
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
  String _result = 'loading...';

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

  void _desafio3() {
    int numero = 3;
    int fatorial = calcularFatorial(numero);

    setState(() {
      _result = 'O fatorial de $numero é $fatorial';
    });
  }

  int calcularFatorial(int numero) {
    if (numero == 0) {
      return 1;
    } else {
      return numero * calcularFatorial(numero - 1);
    }
  }

//Crie uma função que inicialize um número qualquer. Como resultado,
//mostre na tela se o número é par ou ímpar e positivo ou negativo.

  void _desafio4() {
    int numero = -7;
    String parImpar = '';
    String valor = '';

    if (numero == 0) {
      parImpar = 'Apesar de ser o número $numero , ele é considerado como par.';
    } else if (numero % 2 == 0) {
      parImpar = 'O número $numero é par';
    } else {
      parImpar = 'O número $numero é ímpar';
    }

    if (numero > 0) {
      valor = 'e $numero é um número positivo.';
    } else if (numero < 0) {
      valor = 'e $numero é um número negativo.';
    } else {
      valor = 'Nem negativo e nem positivo. É considerado neutro.';
    }

    setState(() {});

    _result = '$parImpar\n$valor';
  }

  void _desafio5() {
    int a = 3;
    int b = 6;
    int resultado = calculo(a, b);

    setState(() {
      if (a == b) {
        _result = 'O resultado é a soma: $resultado';
      } else {
        _result = 'O resultado é a multiplicação: $resultado';
      }
    });
  }

  int calculo(int a, int b) {
    if (a == b) {
      return a + b;
    } else {
      return a * b;
    }
  }

  //Desafio 6:
  //Faça uma função que inicialize um número inteiro qualquer.
  //Como resultado, mostre na tela o seu antecessor e o seu sucessor

  void _desafio6() {
    int numero = 9;
    int antecessor = numero - 1;
    int sucessor = numero + 1;

    setState(() {
      _result = 'Número: $numero\nAntecessor: $antecessor\nSucessor: $sucessor';
    });
  }

  /// Faça uma função que inicialize o valor do salário mínimo e o valor do salário de um usuário em duas variáveis diferentes.
  /// Calcule quantos salários mínimos esse usuário ganha e mostre na tela o resultado.
  /// (Base para o salário mínimo R$ 1.412,00).
  void _desafio7() {
    double minimumWage = 1412.00;
    double salary = 7000.00;
    double result = salary / minimumWage;

    result = double.parse((result).toStringAsFixed(2));

    setState(() {
      _result = '$salary reais equivale a\n$result salários mínimos.';
    });
  }

// Desafio 8:
// Crie uma função que inicialize três valores inteiros diferentes. 
// Como resultado, mostre na tela os valores em ordem decrescente.

  void _desafio8() {
    List<int> entrada = [6, 12, 1, 29];
    mostrarOrdemDecrescente(entrada);
  }

  void mostrarOrdemDecrescente(List<int> valores) {
    valores.sort((a, b) => b.compareTo(a));
    setState(() {
      _result = 'A ordem decrescente é: $valores';
    });
  }

// Desafio 9:
// Crie uma função que inicialize uma lista de notas de um aluno, calcule a média das notas.
// Como resultado, mostre na tela a média do aluno e se ele foi aprovado ou reprovado 
//(média para aprovação: 7)

  void _desafio9() {
    List<double> notas = [8, 7.5, 6, 9.5]; // Exemplo de lista de notas
    verificarAprovacao(notas);
  }

  void verificarAprovacao(List<double> notas) {
    double soma = 0;
    for (double nota in notas) {
      soma += nota;
    }
  
    double media = soma / notas.length;
    
    String aluno;
    if (media >= 7) {
       aluno = 'O aluno foi aprovado!';
    } else {
       aluno = 'O aluno foi reprovado.';
    }

    setState(() {
      _result = 'Média do aluno: $media\n$aluno!';
    });
  }  


//Desafio10
//Crie uma função que inicialize o nome e a idade de uma pessoa.
//Como resultado, mostre na tela o nome da pessoa e se ela é maior ou menor de idade.

  void _desafio10() {
    String nome = 'Lilica';
    int idade = 22;

    String status;
    if (idade >= 18) {
      status = 'maior de idade';
    } else {
      status = 'menor de idade';
    }

    setState(() {
      _result = '$nome é $status.';
    });
  }

  //Desafio 11:
  //Crie uma função que inicialize um número inteiro e mostre na tela a tabuada de 1 a 10 desse número.

  void _desafio11() {
    int numero = 9;
    List<String> tabuada = [];

    for (int i = 1; i <= 10; i++) {
      tabuada.add('$numero x $i = ${numero * i}');
    }

    setState(() {
      _result = tabuada.join('\n');
    });
  }

// Desafio12 

// Crie uma função dart flutter que inicialize uma lista com números inteiros. 
// Como resultado, mostre na tela uma lista com o quadrado dos números da lista original. 

void _desafio12() {
  List<int> numeros = [2, 4, 6];
  List<int> quadrados = [];

  for (int numero in numeros) {
    quadrados.add(numero * numero);
  }

  setState(() {
    _result = quadrados.toString();
  });
}



//Crie uma função que inicialize uma lista com 10 números inteiros. Como resultado, mostre na tela a quantidade de números pares e a quantidade de números impares que existem na lista.

  void _desafio13() {
    List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    int pares = 0;
    int impares = 0;

    for (int numero in numeros) {
      if (numero % 2 == 0) {
        pares++;
      } else {
        impares++;
      }
    }

    setState(() {
      _result =
          'A lista possui $pares números pares\n e $impares números ímpares';
    });
  }

  // Crie uma função que inicialize uma lista com 10 números inteiros. Como resultado,mostre na tela o menor e o maior número da lista.

  void _desafio14() {
    List<int> lista = [2,8,9,15,18,2,20,26,28,32];
    int menor = lista[0];
    int maior = lista[0];

    for (int i = 1; i < lista.length; i++) {
      if (lista[i] < menor) {
        menor = lista[i];
      }
      if (lista[i] > maior) {
        maior = lista[i];
      }
    }

    setState(() {
    _result = 'O menor número será $menor e o maior número será $maior';
    });
  }

  /// Crie uma função que salve, em uma lista, do número 0 até N, em que N é o número limite inicializado em uma variável. Como resultado, mostre a lista na tela.
  void _desafio15() {
    List<int> lista = [0,1,2,3,4];
    int limite = 3;
    List<int> resultado = [];

    for (int i = 0; i <= limite; i++) {
      resultado.add(i);
    } 
    setState(() {
      _result = 'A entrada é igual a $limite e a saída é igual a $resultado';
    });
  }
  
  /// Escreva um método que determina se uma palavra ou frase é um palíndromo, ou seja,
  /// a palavra pode ser lida de da esquerda para a direita ou ao contrário, ignorando pontuação,
  /// números e qualquer outro caracter que não seja uma letra.
  /// Considere também que não há diferenças entre letras maiúsculas e minúsculas. Exemplos de palíndromo: Ana, madam, Arara.
  void _desafio16() {
    String word = 'Arara#.00';
    word = word.replaceAll(RegExp('[^A-Za-z]'), '');
    var onlyLetters = word.split('');
    String reversed = onlyLetters.reversed.join();

    String palindrome = 'Falso';

    if (word.toLowerCase() == reversed.toLowerCase()) {
      palindrome = 'Verdadeiro';
    }

    setState(() {
      _result = 'Palavra: $word\nPalíndromo: $palindrome';
    });
  }

  //Desafio 17
  //Crie uma função que inicialize um número e imprime uma mensagem dizendo se ele é ou não é um número primo.

  void _desafio17() {
    int numero = 13; // Número fixo para verificar se é primo
    if (numero <= 1) {
      setState(() {
        _result = '$numero não é um número primo.';
      });
      return;
    }

    bool ePrimo = true;
    for (int i = 2; i <= sqrt(numero); i++) {
      if (numero % i == 0) {
        ePrimo = false;
        break;
      }
    }

    setState(() {
      if (ePrimo) {
        _result = '$numero é um número primo.';
      } else {
        _result = '$numero não é um número primo.';
      }
    });
  }



// Desafio18

// Crie uma função que inicialize uma palavra e inicialize uma frase. 
// Como resultado, mostre na tela quantas vezes aquela palavra aparece na frase, independente 
// de letras maiúsculas e minúsculas

void _desafio18() {
  String palavra = "adriana";
  String frase = "eu sou adriana, pois meu nome é adriana. e por isso me chamo adriana";

  int contador = 0;

  palavra = palavra.toLowerCase();
  frase = frase.toLowerCase();

  List<String> palavras = frase.split(" ");
  for (String p in palavras) {
    p = p.replaceAll(',', '');
    p = p.replaceAll('.', '');
    if (p == palavra) {
      contador++;
    }
  }

  setState(() {
    _result = 'A palavra "$palavra" aparece $contador vezes na frase.';
  });

  return;
}

//Desafio Extra:

//Um anagrama é uma palavra obtida por meio do rearranjo das letras de outras palavras. Por exemplo, "rats", "tars" e "star" são um grupo de anagramas pois são compostos pelas mesmas letras. Dado uma lista de Strings, escreva um método que agrupa as Strings em grupos de anagramas e salve, em uma nova lista, esses grupos. Letras maiúsculas e minúsculas podem ser tratadas como se fossem iguais, mas o retorno deve manter as letras maiúsculas e minúsculas. A ordem dos grupos ou das Strings não importa.
//Exemplo:
//Entrada = ['foR' , 'scream', 'CaRs', 'poTatos', 'racs', 'creams', 'scar', 'four' ]
//Saída = [ [ 'CaRs', 'racs', 'scar' ], [ 'foR' ], [ 'poTatos' ],

void _desafioExtra() {
  List<String> entrada = ['silent', 'foR', 'scream',  'CaRs', 'poTatos', 'racs', 'creams', 'scar', 'four', 'listen'];
  
  // Convertendo todas as palavras para minúsculas. Usando o método ''map' para aplicar a função 'toLowerCase' a cada elemento da lista entrada.
  List<String> entradaMinuscula = entrada.map((e) => e.toLowerCase()).toList();
  
  // Mapa para armazenar os anagramas
  Map<String, List<String>> anagramas = {};
  
  // Percorrendo a lista de entrada e ordenando as letras de cada palavra, individualmente. 
  for (String palavra in entradaMinuscula) {

    // Aqui eu divido a palavra em letras usando o método 'split' e ordeno as letras usando o método 'sort'.
    List<String> letrasOrdenadas = palavra.split('')..sort();

    // Juntando as letras ordenadas em uma única string. Usando o método 'join'.
    String ordenada = letrasOrdenadas.join();
    
    // Aqui estamos verificando se ainda não existe um grupo de anagramas para as letras ordenadas e cria um novo grupo.
    if (!anagramas.containsKey(ordenada)) {
      anagramas[ordenada] = [];
    }

    //Adiciona a palavra original na lista de anagramas.
    anagramas[ordenada]!.add(palavra);
  }
  
  // Aqui é criado a lista resultado com os grupos de anagramas. 
  List<List<String>> resultado = anagramas.values.map((grupo) {

    //Convertendo as palavras para sua forma original. 
    return grupo.map((palavra) => entrada[entradaMinuscula.indexOf(palavra)]).toList();
  }).toList();
  
  setState(() {
    _result = resultado.toString();
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
              'Resultado:',
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
        onPressed: _desafio18,
        tooltip: '_desafio18',
        child: const Icon(FontAwesomeIcons.rocket),
      ),
    );
  }
}
