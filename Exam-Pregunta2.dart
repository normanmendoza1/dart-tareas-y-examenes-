class Biblioteca {
  String nombre;
  String ciudad;
  int totalLibros;

  Biblioteca(this.nombre, this.ciudad, this.totalLibros);

  void prestarLibro(int cantidad) {
    if (cantidad <= totalLibros) {
      totalLibros -= cantidad;
      print("Se prestaron $cantidad libros.");
    } else {
      print("No hay suficientes libros disponibles.");
    }
  }

  void devolver(int cantidad) {
    totalLibros += cantidad;
    print("Se devolvieron $cantidad libros.");
  }

  void mostrarEstado() {
    print("Biblioteca: $nombre");
    print("Ciudad: $ciudad");
    print("Libros disponibles: $totalLibros");
  }
}

class BibliotecaUniversitaria extends Biblioteca {
  int cupoEstudiantes;
  int estudiantesRegistrados = 0;

  BibliotecaUniversitaria(
      String nombre, String ciudad, int totalLibros, this.cupoEstudiantes)
      : super(nombre, ciudad, totalLibros);

  void registrarEstudiante() {
    if (estudiantesRegistrados < cupoEstudiantes) {
      estudiantesRegistrados++;
      print("Estudiante registrado correctamente.");
    } else {
      print("Cupo de estudiantes lleno.");
    }
  }
}

void main() {
  var biblio = BibliotecaUniversitaria("Central", "La Paz", 100, 3);

  biblio.mostrarEstado();

  biblio.prestarLibro(20);
  biblio.devolver(10);

  biblio.registrarEstudiante();
  biblio.registrarEstudiante();
  biblio.registrarEstudiante();
  biblio.registrarEstudiante(); // Este ya no debería permitir

  biblio.mostrarEstado();
}
