// Definición de la clase base Empleado
class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

// Definición del mixin Bonificaciones
mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    // Calculamos la bonificación como un porcentaje del salario
    return salario * 0.1; // Supongamos que la bonificación es el 10% del salario
  }
}

// Definición de la clase EmpleadoConBonificaciones que hereda de Empleado y utiliza el mixin Bonificaciones
class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(
      String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  // Creación de una lista de objetos EmpleadoConBonificaciones
  var empleados = [
    EmpleadoConBonificaciones('Carlos', 'Cabrera', 2000, 40),
    EmpleadoConBonificaciones('Adriel', 'Ricalde', 2500, 45),
  ];

  // Calculamos la bonificación para cada empleado y mostramos el nombre junto con su bonificación
  for (var empleado in empleados) {
    var bonificacion = empleado.calcularBonificacion(empleado.salario);
    print(
        'Empleado: ${empleado.nombre} ${empleado.apellido}, Bonificación: \$${bonificacion.toStringAsFixed(2)}');
  }
}
