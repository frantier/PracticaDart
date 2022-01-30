import 'dart:io';

void main() 
{
  int decimal;
  int binario;
  int i = 1;
  binario = 0;

  print("Ingresa un numero: ");
  decimal = int.parse(stdin.readLineSync()!);

  while (decimal > 0) 
  {
    binario = binario + (decimal % 2) * i;
    decimal = (decimal / 2).floor();
    i = i * 10;
  }
  print("El numero en binario es: $binario");
   
}