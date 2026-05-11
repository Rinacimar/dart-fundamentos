import 'dart:io';

int pegarOpcao() {
  while(true) {
    try {
      return int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Por favor informe um número!");
    }
  }
}

Map<String, dynamic> cadastrarProduto() {
  String nome = "";
  double preco = 0.0;
  int quantidade = 0;
  bool loop = true;

  print("""
      =======================
         Cadastrar Produtos
      =======================
  """);
  print("Por favor informe o nome do produto:");
  nome = stdin.readLineSync()!;
  print("Informe o preço do produto:");
  
  while (loop) {
    try {
      preco = double.parse(stdin.readLineSync()!);
      loop = false;
    } catch (e) {
      print("Por favor informe um valor estilo 0.00");
    }
  }

  loop = true;

  print("Informe a quantidade que tem desse produto:");
  while (loop) {
    try {
      quantidade = int.parse(stdin.readLineSync()!);
      loop = false;
    } catch (e) {
      print("Por favor informe um número");
    }
  }

  Map<String,dynamic> produto = {
    "nome": nome,
    "preco": preco,
    "quantidade": quantidade
  };

  return produto;
}

void totalProdutos(Map<String, dynamic> produto) {
  print("""
      Produto: ${produto["nome"]}
      Preço: ${produto["preco"]}
      Estoque: ${produto["quantidade"]}
      Total: ${produto["preco"] * produto["quantidade"]}
  """);
}

double totalEstoque(List<Map<String, dynamic>> produtos) {
  double total = 0.0;

  for (Map<String, dynamic> produto in produtos) {
    total += produto["preco"] * produto["quantidade"];
  }

  return total;
}

void listarProdutos(List<Map<String, dynamic>> produtos) {
  print("""
      =======================
           Lista Produtos
      =======================
  """);

  for (Map<String, dynamic> produto in produtos) {
    print("""
      Nome: ${produto["nome"]}
      Preço: ${produto["preco"]}
      Quantidade: ${produto["quantidade"]}
    """);
  }
}

void valorMaisAlto(List<Map<String, dynamic>> produtos) {
  double valor = produtos[0]["preco"];
  String nome = produtos[0]["nome"];

  for (Map<String, dynamic> produto in produtos) {
    if (produto["preco"] > valor) {
      valor = produto["preco"];
      nome = produto["nome"];
    }
  }
  print("""
      =======================
           Produto com 
          valor mais alto
      =======================
  """);

  print("""
      $nome
      $valor
  """);
}
void relatorio(List<Map<String, dynamic>> produtos) {
  print("""
      =======================
            Relatório
      =======================
  """);
  print("""
      =======================
         Lista de produtos
      =======================
  """);
  for(Map<String, dynamic> produto in produtos) {
    print("""
      Nome: ${produto["nome"]}
      Preço: ${produto["preco"]}
      Quantidade: ${produto["quantidade"]}
    """);
  }

  valorMaisAlto(produtos);

  print("""
      =======================
       Quantidade Cadastrado
      =======================
  """);

  print("""
      ${produtos.length} Produtos
""");
}

void menu() {
  print("Olá! Escolhe uma opção");
  bool loop = true;
  List<Map<String, dynamic>> produtos = [];
  
  while(loop) {
    print("""
      =======================
        CONTROLE DE ESTOQUE 
      =======================
      1 - Cadastrar Produto
      2 - Total de Produto
      3 - Total de Estoque
      4 - Listar Produtos
      5 - Relatório
      6 - Encerrar
    """);

    int opcao = pegarOpcao();
    if (opcao > 0 && opcao < 7){
      if (opcao == 1) {
        
        produtos.add(cadastrarProduto());

      } else if (opcao == 2) {
        print("Qual produto você quer ver informação?");
        print("Informe o numero do produto");

              
        bool loop_produto = true;

        while (loop_produto) {
          int count = 0; 
          for (Map<String, dynamic> produto in produtos) {
            print("$count - $produto");
            count ++;
          }

          int opcao_produto = pegarOpcao();
          if (opcao_produto < produtos.length) {
            totalProdutos(produtos[opcao_produto]);
            loop_produto = false;
          } else {
            print("Informe um número referente ao que está na lista!");
          }
        }
      

      } else if (opcao == 3) {

        print("Valor total em Estoque: ${totalEstoque(produtos)}");

      } else if (opcao == 4) {

        listarProdutos(produtos);

      } else if (opcao == 5) {

        relatorio(produtos);  

      } else {
        print("Encerrando Sistema!");
        loop = false;
      }
    } else {
      print("##### Número informação não corresponde com nenhuma opção #####\n");
    }
  }
}

void main() {
  menu();
}