import 'dart:io';

void menu() {
  bool success = false;
  int opcao = 0;

  while (!success) {
    print("Escolha uma opção:");
    print("1 - Verificar se o número é par");
    print("2 - Somar números");
    print("3 - Sair");
    
    try {
      opcao = int.parse(stdin.readLineSync()!);
      if (opcao == 1 || opcao == 2 || opcao ==3){
        if (opcao == 1){
          ehPar();
        } else if (opcao == 2) {
          soma();
        } else {
          print("Encerrando! Obrigado!");
          success = true;
        }
      } else {
        print("Por favor informe um numero que seja referente as opções!");
        print("");
        success = false;
      }
    } catch (e){
      print("Por favor informe apenas o número da opção.");
      print("");
    }
  }

  

}

void ehPar() {
  int numero = 0;
  bool success = false;

  print("Por favor informe o número para verificar: ");

  while (!success) {
    try {
      numero = int.parse(stdin.readLineSync()!);

      if (numero%2 == 0){
        print("Número é par");
        print("");
      } else {
        print("Número é impar");
        print("");
      }

      success = true;
    } catch (e){
      print("Por favor informe apenas número.");
      print("");
    }
  }

  
}

void soma() {
  int quantidade = 0;
  bool success = false;
  var resultado = 0;
  var count = 0;

  print("Quantos numeros quer somar?");
  print("");

  while (!success){
    try {
      quantidade = int.parse(stdin.readLineSync()!);
      success = true;
    } catch (e) {
      print("Informe apenas número");
      print("");
    }
  }

  success = false;
  print("Informe os numeros agora:");
  print("");

  while (count < quantidade) {
    while (!success) {
      try {
    
        var numero = int.parse(stdin.readLineSync()!);
        resultado += numero;
        success = true;
      } catch (e) {
        print("Por favor, informe um número");
        print("");
      }
    }
    count += 1;
    success = false;   
  }
  print("O resultado da soma é $resultado");
  print("");
}


void main() {
  print("Olá seja bem vindo!");
  menu();
}
