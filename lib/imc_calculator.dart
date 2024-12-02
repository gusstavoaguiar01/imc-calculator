import 'package:imc_calculator/models/console_utils.dart';
import 'package:imc_calculator/models/pessoa.dart';
void execute() {
  print("Bem vindo a calculadora de IMC!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o seu nome: ");
  double? peso = ConsoleUtils.letDoubleComTextoEValidacaoComSaida("Digite o seu peso em kg (ou 'sair' para encerrar):", "sair");
  double? altura = ConsoleUtils.letDoubleComTextoEValidacaoComSaida("Digite a sua altura em metros (ou 'sair' para encerrar):", "sair");

  if (peso == null || altura == null) {
    print("Entrada inválida ou operação cancelada.");
    return;
  }

  Pessoa pessoa = Pessoa(nome, altura, peso);
  double imc = pessoa.calcularIMC();
  String classificacao = pessoa.classificarIMC();

  print("\n${pessoa.nome}, o seu IMC é: ${imc.toStringAsFixed(2)}");
  print("Classificação: $classificacao");
}
