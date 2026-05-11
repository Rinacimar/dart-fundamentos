void verificarParImpar(List<int> lista){
  int par = 0;
  int impar = 0;
  
  for (int numero in lista) {
    if (numero%2 == 0){
      par ++;
    } else {
      impar ++;
    }
  }

  print("$par números pares e $impar números impares");
}

void main() {
  verificarParImpar([6,4,3,5,19,13,25,64,18,8,9,7,2,1,10]);
}