import 'dart:io';

void cadastrarProduto() {
  double estoque = 0.0;
  bool loop = true;

  List<Map<String, dynamic>> produtos = [];
  while (loop){
    print("informe o produto que deseja cadastar");
    String nome = stdin.readLineSync()!;
    if (nome != "sair") {
      print("informe preço do produto $nome");
      double preco = double.parse(stdin.readLineSync()!);

      print("Informe a quantidade em estoque do produto $nome");
      int quantidade = int.parse(stdin.readLineSync()!);

      produtos.add({
        "nome": nome,
        "preco": preco,
        "quantidade": quantidade
      });
    } else {
      loop = false;
      
      for (Map<String, dynamic> produto in produtos) {
      double total = produto["preco"] * produto["quantidade"];
      estoque += total;
      print("Produto: ${produto["nome"]}\nValor Total: $total");
      }

      print("Valor total em estoque: $estoque");
    }
  }
}

void main() {
  print("Olá! Vamos cadastrar os produto. (Quando terminar de cadastrar, so digitar 'sair' e vamos encerrar)");
  cadastrarProduto();
}