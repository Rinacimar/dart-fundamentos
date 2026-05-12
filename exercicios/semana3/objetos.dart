class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}

class Produto {
  String nome;
  double preco;
  int quantidade;

  Produto(this.nome, this.preco, this.quantidade);

  double valorTotal() {
    return preco * quantidade;
  }
}

double calcularEstoque(List<Produto> produtos) {
  double estoque =0.0;

  for (Produto produto in produtos) {
    estoque += produto.valorTotal();
  }
  return estoque;
}

void main() {
  Pessoa rinacimar = Pessoa("Rinacimar", 32);
  Pessoa raphael = Pessoa("Raphael", 27);

  print("${rinacimar.nome} tem ${rinacimar.idade} anos");
  print("${raphael.nome} tem ${raphael.idade} anos");

  List<Produto> produtos = [];

  produtos.add(Produto("Monitor", 140.50, 4));
  produtos.add(Produto("Mouse", 55.20, 35));

  for (Produto produto in produtos) {
    print("Nome: ${produto.nome}");
    print("Valor Total: ${produto.valorTotal()}");
  }

  print("Estoque Total: ${calcularEstoque(produtos)}");
  
}