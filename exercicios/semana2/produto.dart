void main() {
  Map<String,dynamic> produto = {
    "nome": "Mouse",
    "preco": 40.00,
    "quantidade": 13
  };

  double total = produto["preco"] * produto["quantidade"];
  print("Valor total: $total");
}