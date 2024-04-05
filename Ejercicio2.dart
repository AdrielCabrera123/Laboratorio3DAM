import 'dart:math' as math;

// Definición de la clase Calculadora
class Calculadora {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
  double division(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw Exception("No se puede dividir por cero.");
    }
  }
}

// Mixin para agregar operaciones adicionales
mixin OperacionesAdicionales {
  num potencia(double base, double exponente) => math.pow(base, exponente);
}

// Mixin para agregar operaciones avanzadas
mixin OperacionesAvanzadas {
  double raizCuadrada(double numero) => math.sqrt(numero);
}

// Clase CalculadoraAvanzada que utiliza ambos mixins
class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales, OperacionesAvanzadas {}

void main() {
  // Creación de un objeto de tipo CalculadoraAvanzada
  var calculadoraAvanzada = CalculadoraAvanzada();

  // Realización de algunas operaciones matemáticas
  print('Suma: ${calculadoraAvanzada.suma(5, 3)}');
  print('Resta: ${calculadoraAvanzada.resta(5, 3)}');
  print('Multiplicación: ${calculadoraAvanzada.multiplicacion(5, 3)}');
  print('División: ${calculadoraAvanzada.division(5, 3)}');
  print('Potencia: ${calculadoraAvanzada.potencia(5, 3)}');
  print('Raíz cuadrada: ${calculadoraAvanzada.raizCuadrada(25)}');
}
