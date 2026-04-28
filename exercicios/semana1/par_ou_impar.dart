import 'dart:io';

void main() {

  print('Me fale um numero e eu vou verificar se é par. ');
  var numero = int.parse(stdin.readLineSync()!);

  if (numero%2 == 0) {
    print("Número é par");
  } else {
    print("Número é impar");
  }  
}