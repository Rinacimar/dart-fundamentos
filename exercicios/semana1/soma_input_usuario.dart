import 'dart:io';

void main() {
  bool success = false;
  var count = 0;
  var lista = [];
  var resultado = 0;
  var quantidade = 0;

  print("Quantos numeros quer somar?");
  while (!success) {
    try {

    quantidade = int.parse(stdin.readLineSync()!);

    success = true;

    } catch (e) {

      print("Por favor informe um numero inteiro");

    }
  }

  success = false;
  print("Ok agora informe os numeros");

  while (count < quantidade) {
    while (!success) {
      try {

        var numero = int.parse(stdin.readLineSync()!);
        lista.add(numero);

        success = true;
      } catch (e) {
        print("Por favor informe um numero inteiro");
      }
    }
    
    count += 1;
    success = false;
  }

  for (count in lista) {
    resultado += count;
  }

  print(resultado);
  
}