// Definición de la clase base Usuario
class Usuario {
  String nombre;
  String email;
  String contrasena;

  Usuario(this.nombre, this.email, this.contrasena);
}

// Definición del mixin Autenticacion
mixin Autenticacion {
  bool iniciarSesion(Usuario usuario, String email, String contrasena) {
    // Aquí deberías tener alguna lógica de autenticación
    if (usuario.email == email && usuario.contrasena == contrasena) {
      print('Inicio de sesión exitoso.');
      return true;
    } else {
      print('Credenciales incorrectas. Inicio de sesión fallido.');
      return false;
    }
  }
}

// Definición de la clase UsuarioAutenticado que hereda de Usuario y utiliza el mixin Autenticacion
class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String contrasena)
      : super(nombre, email, contrasena);
}

void main() {
  // Creación de un objeto de tipo UsuarioAutenticado
  var usuarioAutenticado =
      UsuarioAutenticado('Adriel', 'adriel@example.com', 'password123');

  // Invocación del método iniciarSesion
  usuarioAutenticado.iniciarSesion(usuarioAutenticado, 'adriel@example.com', 'password123');
}