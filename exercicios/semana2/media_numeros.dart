
double media(List<int> lista) {
  int soma = 0;
  int quantidade = lista.length;

  for (int i in lista) {
    soma += i;
  }
  
  return ((soma/quantidade));
}

void main() {
  print(media([10, 20, 30, 40]));
}