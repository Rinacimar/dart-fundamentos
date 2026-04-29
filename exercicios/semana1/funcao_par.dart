import 'dart:io';

bool ehPar(int numero) {
    bool resultado = false;

    if (numero%2 == 0) {
      resultado = true;
    } else {
      resultado = false;
    }
    
    return resultado;
  }
void main() {
  bool sucess = false;
  var numero = 0;

  print("Informe um numero:");

  while (!sucess) {
    try {
      numero = int.parse(stdin.readLineSync()!);

      sucess = true;
    } catch (e) {
      print("Por favor insira um numero inteiro");
    }
  }

  print(ehPar(numero));
}