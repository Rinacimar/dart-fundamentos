import 'dart:io';

int coletarNumero(String mensagem){
  while (true) {
    try {
      print(mensagem);
      return int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Por favor informe um número.\n");
    }
  }
}

bool par(int numero) {
  return (numero % 2 == 0);
}

void verificarPar() {
  if (par(coletarNumero("Qual numero deseja analisar?"))){
    print("Número é par!\n");
  } else {
    print("Número é impar!\n");
  }
}

void soma() {
  int count = 0;
  int quantidade = coletarNumero("Quantos números deseja somar? \n");
  int resultado = 0;

  while (count < quantidade) {
    resultado += coletarNumero("");
    count += 1;
  }
  print("O resultado da soma é $resultado. \n");
}

void tabuada() {
  int numero = coletarNumero("Quer saber a tabuada de qual número?");
  print("TABUADA DE $numero.\n");
  for (int i = 1; i <= 10; i++) {
    int resultado = numero*i;
    print("$numero x $i = $resultado.");
  }

}

void menu() {
  bool loop = true;
  while (loop == true){
    print(
    """

      ------------------------------------
      | 1 - Verficiar se é par.          |
      | 2 - Somar um conjunto de números |
      | 3 - Tabuada                      |
      | 4 - Encerrar                     |
      ------------------------------------
    """);

    int escolha = coletarNumero("Escolha uma das opções!");

    if (escolha > 0 && escolha < 5){
      if (escolha == 1) {
        verificarPar();
      } else if (escolha == 2){
        soma();
      } else if (escolha == 3){
        tabuada();
      } else {
        print("Encerrando! Obrigado!");
        loop = false;
      }
    } else {
      print(" Por favor, escolha um número referente as opções no menu!");
    }
  }
}

void main() {
  menu();
}