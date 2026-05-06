import 'dart:io';

double lerNumero() {
  while(true) {
    try {
      return double.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Informe apenas números");
    }
  }
}

double somaLista(List<double> lista) {
  double resultado = 0.0;

  for(double i in lista) {
    resultado += i;
  }
  return resultado;
}

double mediaLista(List<double> lista) {
  double soma = somaLista(lista);

  int quantidade = lista.length;
  
  return soma/quantidade;
}

double maiorNumeroLista(List<double> lista) {
  double numero = lista[0];

  for(double i in lista){
    if (i > numero) {
      numero = i;
    }
  }
  return numero;
}

double menorNumeroLista(List<double> lista) {
  double numero = lista[0];

  for(double i in lista){
    if (i < numero) {
      numero = i;
    }
  }
  return numero;
}


void funcoes() {
  bool loop = true;
  double numero = 0;
  List<double> lista = [];

  while (loop) {
    print("Informe um numero, quando informar 0 o sistema irá informar soma, média, maior e menor número");
    numero = lerNumero();
    if (numero != 0){
      lista.add(numero);
    } else {
      loop = false;
    }
  }

  if (lista.isEmpty) {
    print("Nenhum número informado.");
    return;
  }

  double soma = somaLista(lista);
  double media = mediaLista(lista);
  double maiorNumero = maiorNumeroLista(lista);
  double menorNumero = menorNumeroLista(lista);

  print("Soma:$soma");
  print("Média: $media");
  print("Maior Número: $maiorNumero");
  print("Menor Número: $menorNumero");
}

void main() {
  funcoes();
}