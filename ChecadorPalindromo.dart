import 'dart:io';

void main() {

  String frase;
  String saltos;
  String i;
  int contador;

  print("Escribe una palabra: ");
  frase = stdin.readLineSync()!;
  contador = frase.split(' ').length;
  saltos = frase.trim().replaceAll(" ", "");
  i = saltos.toLowerCase();

  String atras = i.split('').reversed.join('');

  if (i == atras) 
  {
    print('Es un Palíndromo');
  } 
  else 
  {
    print('No es un Palíndromo');
  }

  print('Número de letras es: $contador');
}