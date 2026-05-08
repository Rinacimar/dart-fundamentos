void main() {
  int count = 0;

  List<Map<String, dynamic>> alunos = [
    {
      "nome": "Rinacimar",
      "idade": 32,
      "curso": "Flutter",
      "ativo": true
    },
    {
      "nome": "Lucas",
      "idade": 28,
      "curso": "Direito",
      "ativo": false
    },
    {
      "nome": "Sarah",
      "idade": 25,
      "curso": "Educação Fisica",
      "ativo": true
    }
  ];

  print("Alunos:");
  for (Map<String, dynamic> aluno in alunos) {
    print("- ${aluno["nome"]}");
  }

  print("Alunos ativos:");
  for (Map<String, dynamic> aluno in alunos) {
    if (aluno["ativo"]){
      print("- ${aluno["nome"]}");
    }
  }

  print("Quantidade de alunos Ativos:");
  for (Map<String, dynamic> aluno in alunos) {
    if (aluno["ativo"]) {
      count ++;
    }
  }
  print("$count alunos ativos");
}