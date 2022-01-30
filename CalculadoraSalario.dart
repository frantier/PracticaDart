import 'dart:io';

void main() {

  int salario;
  int horasmas;
  int salariomas;
  int actas;
  int horashechas;

  actas = 0;

  String parar;
  parar = "S";

  while (actas < 2 && parar.toUpperCase() == "S") 
  {
    print("¿Horas hechas en la semana?");
    horashechas = int.parse(stdin.readLineSync()!);

    while (horashechas <= 0) 
    {
      print(
          "Error");
      print("¿Horas hechas en la semana?");
      horashechas = int.parse(stdin.readLineSync()!);
    }

    if (horashechas < 27) 
    {
      actas = actas+ 1;
      salario = horashechas * 120;
      print(
          "Se debe trabajar minimo 27 horas"
          "Dos actas mas quedas fuera del trabajo");
      print("");
      print("Pago por tus horas: $salario");
    } 
    else if (horashechas <= 40) 
    {
      salario = horashechas * 120;
      print(
          "Horas hechas $horashechas, tu pago sera de: $salario pesos");
      print("");
    } 
    else 
    {
      horasmas = horashechas - 40;
      salariomas = horasmas * 175;
      salario = horashechas * 120;
      print("Horas Hechas $horashechas, Horas Extras: $horasmas, Total: ${salario + salariomas} pesos");
      print("");
    }
    if (actas < 2) 
    {
      print("Para consultar de nuevo aprieta (S)");
      print("Para denetener presione cualquier otra tecla");
      parar = stdin.readLineSync()!;
    } 
    else 
    {
      print("Numero de actas: $actas ");
    }
  }
}