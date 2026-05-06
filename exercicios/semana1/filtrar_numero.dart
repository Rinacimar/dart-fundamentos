List<int> maiorQueDez(List<int> lista) {
  List<int> resultado = [];

  for (int i in lista) {
    if (i > 10) {
      resultado.add(i);
    }
  }

  return resultado;
}

void main() {
  print(maiorQueDez([5,11,30,2,18]));
}