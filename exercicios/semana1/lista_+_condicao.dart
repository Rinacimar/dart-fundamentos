void main() {
  var lista = [10, 15, 22, 33, 40];
  var numero = 0;
  var count = 0;
  var soma = 0;

  for (numero in lista) {
    if (numero%2 == 0) {
      print(numero);
      count += 1;
      soma += numero;
    }
  }

  print("Pares encontrados: $count");
  print("Soma dos pares: $soma");
  
}