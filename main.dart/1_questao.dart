class Funcionaria {
  String nome;
  double salario;

  Funcionaria(this.nome, this.salario);
}

void main() {
  List<Funcionaria> funcionarias = [
    Funcionaria('Alana', 5000.60),
    Funcionaria('Bia', 6000.84),
    Funcionaria('Carol', 4000.40),
    Funcionaria('Deuziran', 7000.80),
    Funcionaria('Eva', 5500),
  ];

  // Salário na ordem crescente
  funcionarias.sort((a, b) => a.salario.compareTo(b.salario));
  print('ORDEM CRESCENTE DO SALÁRIO:');
  for (Funcionaria funcionaria in funcionarias) {
    print('${funcionaria.nome}: ${funcionaria.salario}');
  }

  // Salário na ordem decrescente
  funcionarias.sort((a, b) => b.salario.compareTo(a.salario));
  print('ORDEM DECRESCENTE DO SALÁRIO:');
  for (Funcionaria funcionaria in funcionarias) {
    print('${funcionaria.nome}: ${funcionaria.salario}');
  }

  // Ordem alfabetica
  funcionarias.sort((a, b) => a.nome.compareTo(b.nome));
  print('ORDEM ALFABÉTICA:');
  for (Funcionaria funcionaria in funcionarias) {
    print('${funcionaria.nome}: ${funcionaria.salario}');
  }
}
