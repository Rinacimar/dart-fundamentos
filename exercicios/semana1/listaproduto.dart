void main() {
  double estoque = 0.0;

  List<Map<String, dynamic>> produtos = [
    {
      "nome": "Mouse",
      "preco": 40.00,
      "quantidade": 13
    },
    {
      "nome": "Teclado",
      "preco": 50.00,
      "quantidade": 30
    },
    {
      "nome": "Teclado Mecanico",
      "preco": 300.00,
      "quantidade": 4
    },
    {
      "nome": "Monitor",
      "preco": 440.00,
      "quantidade": 10
    },
    {
      "nome": "Headset",
      "preco": 180.00,
      "quantidade": 7
    }
  ];

  for (Map<String, dynamic> produto in produtos) {
    double total = produto["preco"] * produto["quantidade"];
    estoque += total;
    print("Produto: ${produto["nome"]}\nValor Total: $total");
  }

  print("Valor total em estoque: $estoque");
}