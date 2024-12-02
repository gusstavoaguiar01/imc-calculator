class Pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome,this._altura,this._peso);
String get nome => _nome;

  double calcularIMC() {
    return _peso / (_altura * _altura);
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if (imc < 18.5) {
      return "Abaixo do peso";
    } else if (imc < 24.9) {
      return "Peso normal";
    } else if (imc < 29.9) {
      return "Sobrepeso";
    } else if (imc < 34.9) {
      return "Obesidade Grau I";
    } else if (imc < 39.9) {
      return "Obesidade Grau II";
    } else {
      return "Obesidade Grau III";
    }
  }

}