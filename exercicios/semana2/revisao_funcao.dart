int somar(int a, int b) {
  int resultado = a + b;
  return resultado;
}

 bool  ehMultiplo(int numero, int divisor){
  bool resultado = (numero % divisor == 0);
  return resultado;
 }

void main() {
  print(somar(10, 94));

  if (ehMultiplo(2082, 2)) {
    print("É multiplo");
  } else {
    print("Não é Multiplo");
  }
}