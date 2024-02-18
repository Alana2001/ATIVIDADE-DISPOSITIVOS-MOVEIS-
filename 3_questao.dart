class Produto {
  int codigo;
  String descricao;
  double preco;

  Produto(this.codigo, this.descricao, this.preco);
}

void main() {
  List<Produto> produtos = [
    Produto(101, "Caderno", 29.99),
    Produto(205, "Caixinha de Canetas", 19.99),
    Produto(309, "Lancheira", 39.99),
    Produto(412, "Bolsa", 49.99),
    Produto(503, "Agenda", 14.99),
    Produto(607, "Chamex", 24.99),
    Produto(713, "Kit Estojo", 34.99),
    Produto(824, "Cadeiras Kids", 44.99),
    Produto(929, "Reguas", 5.99),
    Produto(103, "Livros", 54.99),
    Produto(111, "Carregadores", 64.99),
    Produto(122, "Fontes", 74.99),
  ];

  // Ordenar produtos pelo código
  produtos.sort((a, b) => a.codigo.compareTo(b.codigo));

  // Código do produto a ser buscado
  int codigoBuscado = 607;

  // Busca sequencial
  int comparacoesSequencial = buscaSequencial(produtos, codigoBuscado);
  print("Busca Sequencial - Comparações necessárias: $comparacoesSequencial");

  // Busca binária
  int comparacoesBinaria = buscaBinaria(produtos, codigoBuscado);
  print("Busca Binária - Comparações necessárias: $comparacoesBinaria");
}

int buscaSequencial(List<Produto> lista, int codigoBuscado) {
  int comparacoes = 0;

  for (int i = 0; i < lista.length; i++) {
    comparacoes++;
    if (lista[i].codigo == codigoBuscado) {
      return comparacoes;
    }
  }

  return comparacoes;
}

int buscaBinaria(List<Produto> lista, int codigoBuscado) {
  int comparacoes = 0;
  int inicio = 0;
  int fim = lista.length - 1;

  while (inicio <= fim) {
    comparacoes++;
    int meio = (inicio + fim) ~/ 2;

    if (lista[meio].codigo == codigoBuscado) {
      return comparacoes;
    } else if (lista[meio].codigo < codigoBuscado) {
      inicio = meio + 1;
    } else {
      fim = meio - 1;
    }
  }

  return comparacoes;
}
