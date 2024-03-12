/// Faça uma função que inicialize o valor do salário mínimo e o valor do salário de um usuário em duas variáveis diferentes. 
/// Calcule quantos salários mínimos esse usuário ganha e mostre na tela o resultado.
/// (Base para o salário mínimo R$ 1.412,00).
double desafio7(var input){
  double minimumWage = 1412.00;
  var response = double.parse(input.toString());
  response = response/minimumWage;

  return double.parse((response).toStringAsFixed(2));
}

/// Escreva um método que determina se uma palavra ou frase é um palíndromo, ou seja, 
/// a palavra pode ser lida de da esquerda para a direita ou ao contrário, ignorando pontuação, 
/// números e qualquer outro caracter que não seja uma letra.
/// Considere também que não há diferenças entre letras maiúsculas e minúsculas. Exemplos de palíndromo: Ana, madam, Arara.
bool desafio16(String input){
  var onlyLetters = input.replaceAll(RegExp('[^A-Za-z]'),'').split('');
  String reversed = onlyLetters.reversed.join();
  
  return input.toLowerCase() == reversed.toLowerCase();
}