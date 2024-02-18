void main() {
  List<int> numeros = [1, 9, 1, 2, 7, 6, 8, 5, 9, 1];

  // Ordenar os números
  numeros.sort();

  // Encontrar o menor número e contar quantas vezes aparece
  int menorNumero = numeros[0];
  int contadorMenor = 0;

  // Encontrar o maior número e contar quantas vezes aparece
  int maiorNumero = numeros[numeros.length - 1];
  int contadorMaior = 0;

  for (int numero in numeros) {
    if (numero == menorNumero) {
      contadorMenor++;
    }

    if (numero == maiorNumero) {
      contadorMaior++;
    }
  }

  // Exibir resultados
  print("Números ordenados: $numeros");
  print("\nMenor número: $menorNumero");
  print("Quantidade de vezes que o menor número aparece: $contadorMenor");

  print("\nMaior número: $maiorNumero");
  print("Quantidade de vezes que o maior número aparece: $contadorMaior");
}
