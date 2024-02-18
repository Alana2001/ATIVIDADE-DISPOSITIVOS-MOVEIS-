class Alunos {
  String nome;
  double nota1;
  double nota2;

  Alunos(this.nome, this.nota1, this.nota2);

  double calcularMediaPonderada() {
    return (nota1 * 2 + nota2 * 3) / 5;
  }
}

void main() {
  // Lista de nomes dos alunos
  List<String> nomesDosAlunos = [
    "Alana",
    "Beatriz",
    "Carol",
    "Bernardo",
    "Thiego",
    "Theo",
    "Bira",
    "Juliana"
  ];

  // Cadastro dos alunos
  List<Alunos> alunos = [];

  for (int i = 0; i < nomesDosAlunos.length; i++) {
    double nota1 = (i + 1) * 2.5; // Exemplo: nota1 = (1 * 2.5), (2 * 2.5), ...
    double nota2 = (i + 1) * 1.5; // Exemplo: nota2 = (1 * 1.5), (2 * 1.5), ...

    Alunos aluno = Alunos(nomesDosAlunos[i], nota1, nota2);
    alunos.add(aluno);
  }

  // Listagem ordenada pela média ponderada
  alunos.sort((a, b) =>
      b.calcularMediaPonderada().compareTo(a.calcularMediaPonderada()));
  print("Lista de alunos ordenada pela média ponderada:");
  alunos.forEach((aluno) {
    print(
        "${aluno.nome}: Média Ponderada - ${aluno.calcularMediaPonderada().toStringAsFixed(2)}");
  });

  // Listagem ordenada pela nota 1
  alunos.sort((a, b) => a.nota1.compareTo(b.nota1));
  print("\nLista de alunos ordenada pela nota 1:");
  alunos.forEach((aluno) {
    print("${aluno.nome}: Nota 1 - ${aluno.nota1.toStringAsFixed(2)}");
  });

  // Listagem de alunos reprovados (média menor que 7), em ordem alfabética
  List<Alunos> reprovados =
      alunos.where((aluno) => aluno.calcularMediaPonderada() < 7).toList();
  reprovados.sort((a, b) => a.nome.compareTo(b.nome));
  print("\nAlunos reprovados em ordem alfabética:");
  reprovados.forEach((aluno) {
    print(
        "${aluno.nome}: Média ${aluno.calcularMediaPonderada().toStringAsFixed(2)}");
  });
}
