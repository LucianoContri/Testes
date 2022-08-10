import 'dart:io';

void main() {
  bool x = true;
  while (x) {
    print("Digite o número?");
    try {
      int? numero = int.parse(stdin.readLineSync()!);
      int somatorio = filtrar(numero);
      print("O somatório dos números divisíveis por 3 e 5 é: $somatorio");
    } catch (e) {
      print("Digite um número válido");
    }
    print("deseja tentar outro número? (y/n)");
    String? condicional = stdin.readLineSync();
    if (condicional != "y") {
      x = false;
      print("Bye,Bye");
    }
  }
}

int filtrar(int numero) {
  int somatorio = 0;
  for (int i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }
  return somatorio;
}
