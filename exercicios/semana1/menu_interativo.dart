import 'dart:io';

int lerNumero() {
  bool success = false;

  while (!success){
    try {
      int numInt = int.parse(stdin.readLineSync()!);
      return numInt;
    } catch(e) {
      print("Por favor informe apenas número. \n");
    }
  } 

}

void menu() {
  bool success = false;
  int opcao = 0;

  while (!success) {
    print("Escolha uma opção:");
    print("1 - Verificar se o número é par");
    print("2 - Somar números");
    print("3 - Sair \n");

  
    opcao = lerNumero();
    if (opcao == 1 || opcao == 2 || opcao ==3){
      if (opcao == 1){
        verificarPar();
      } else if (opcao == 2) {
        soma();
      } else {
        print("Encerrando! Obrigado!");
        success = true;
      }
    } else {
      print("Por favor informe um numero que seja referente as opções! \n");
    }
  }
}

void verificarPar() {
  print("Por favor informe o número para verificar: ");
  int numero = lerNumero();

  if (ehPar(numero)){
    print("Número é par \n");
  } else {
    print("Número é impar \n");
  }
}

bool ehPar(int numero) {
  return numero%2 == 0;
}

void soma() {
  int quantidade = 0;
  var resultado = 0;
  var count = 0;

  print("Quantos numeros quer somar?");
  
  quantidade = lerNumero();

  print("Informe os numeros agora:");

  while (count < quantidade) {
    int numero = lerNumero();
    resultado += numero;
    count += 1;
  }
  print("O resultado da soma é $resultado \n");
}


void main() {
  print("Olá seja bem vindo!");
  menu();
}
