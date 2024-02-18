void main() {
  List<int> numeros = cadastrarNumeros(15);
  numeros.sort();

  print("Vetor ordenado: $numeros");

  int numeroBuscado = lerNumeroDoUsuario();

  // Busca sequencial
  int posicaoSequencial = buscaSequencial(numeros, numeroBuscado);
  verificarEImprimirResultado(posicaoSequencial, numeroBuscado, "sequencial");

  // Busca binária
  int posicaoBinaria = buscaBinaria(numeros, numeroBuscado);
  verificarEImprimirResultado(posicaoBinaria, numeroBuscado, "binária");
}

List<int> cadastrarNumeros(int quantidade) {
  Set<int> numerosSet = Set<int>();

  while (numerosSet.length < quantidade) {
    int numero = gerarNumeroAleatorio();
    numerosSet.add(numero);
  }

  return numerosSet.toList();
}

int gerarNumeroAleatorio() {
  return DateTime.now().microsecondsSinceEpoch %
      100; // Gera números aleatórios de 0 a 99
}

int lerNumeroDoUsuario() {
  print("Digite um número para verificar se está no vetor:");
  return gerarNumeroAleatorio();
}

int buscaSequencial(List<int> numeros, int numeroBuscado) {
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] == numeroBuscado) {
      return i;
    }
  }
  return -1; // Retorna -1 se o número não for encontrado
}

int buscaBinaria(List<int> numeros, int numeroBuscado) {
  int inicio = 0;
  int fim = numeros.length - 1;

  while (inicio <= fim) {
    int meio = (inicio + fim) ~/ 2;

    if (numeros[meio] == numeroBuscado) {
      return meio;
    } else if (numeros[meio] < numeroBuscado) {
      inicio = meio + 1;
    } else {
      fim = meio - 1;
    }
  }

  return -1; // Retorna -1 se o número não for encontrado
}

void verificarEImprimirResultado(
    int posicao, int numeroBuscado, String tipoBusca) {
  if (posicao != -1) {
    print(
        "O número $numeroBuscado foi encontrado na posição $posicao (busca $tipoBusca).");

    if (posicao % 2 == 0) {
      print("Está em uma posição par do vetor.");
    } else {
      print("Está em uma posição ímpar do vetor.");
    }
  } else {
    print(
        "O número $numeroBuscado não foi encontrado no vetor (busca $tipoBusca).");
  }
}
