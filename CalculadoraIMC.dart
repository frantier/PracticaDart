import 'dart:io';

void main() {
  stdout.write('Escribe tu peso: ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Escribe tu altura: ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print('Tienes un IMC de:' + imc.toStringAsFixed(2));

  if (imc < 16) {
    print('Bajo peso severo');
  } else if (imc < 17) {
    print('Bajo peso moderado');
  } else if (imc < 18.5) {
    print('Bajo peso');
  } else if (imc < 25) {
    print('Peso normal');
  } else if (imc < 30) {
    print('Sobrepeso');
  } else if (imc < 35) {
    print('Obesidad tipo I');
  } else if (imc < 40) {
    print('Obesidad tipo II');
  } else {
    print('Obesidad tipo III');
  }
}