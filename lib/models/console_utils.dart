import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? letDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (error) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDoubleComTexto(texto);
  }

  static double? letDoubleComTextoEValidacaoComSaida(
      String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComTexto(texto);
        if (value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } catch (error) {
        print(texto);
      }
    } while (true);
  }
}
