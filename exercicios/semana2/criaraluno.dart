void main() {
  Map<String, dynamic> aluno = {
    "nome": "Rinacimar",
    "idade": 32,
    "curso": "Flutter",
    "ativo": true
  };

  print("${aluno["nome"]} tem ${aluno["idade"]} anos e estuda ${aluno["curso"]}");
}