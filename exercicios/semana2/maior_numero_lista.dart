
int maiorNumero(List<int> lista) {
  int numero = lista[0];
  for (int i in lista) {
    if (i > numero) {
      numero = i;
    }
  }
  return numero;
}
void main() {
  print(maiorNumero([5, 12, 3, 99, 42]));
}