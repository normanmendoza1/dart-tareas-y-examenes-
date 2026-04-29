// Clase padre Animal
class Animal {
  // Atributos
  String nombre;
  String especie;
  int edad;
  
  // Constructor
  Animal(this.nombre, this.especie, this.edad);
  
  // Métodos
  void hacerSonido() {
    print("El animal hace un sonido genérico");
  }
  
  void mostrarInfo() {
    print("=== Información del Animal ===");
    print("Nombre: $nombre");
    print("Especie: $especie");
    print("Edad: $edad años");
    print("¿Es adulto? ${esAdulto() ? 'Sí' : 'No'}");
    print("===============================");
  }
  
  bool esAdulto() {
    return edad >= 3;
  }
}

// Clase Perro que hereda de Animal
class Perro extends Animal {
  // Constructor
  Perro(String nombre, String especie, int edad) : super(nombre, especie, edad);
  
  // Sobreescritura del método hacerSonido()
  @override
  void hacerSonido() {
    print("¡Guau! Soy $nombre");
  }
  
  // Método adicional
  void buscarPelota() {
    print("$nombre está buscando la pelota!");
  }
}

void main() {
  print("=== PROGRAMA DE DEMOSTRACIÓN DE CLASES ===\n");
  
  // a) Crear objetos
  print("--- Creando objetos ---");
  Animal animalGenerico = Animal("Félix", "Felino", 5);
  Perro miPerro = Perro("Max", "Canino", 2);
  print("Animal genérico creado: ${animalGenerico.nombre}");
  print("Perro creado: ${miPerro.nombre}\n");
  
  // b) Probar métodos con Animal genérico
  print("--- PROBANDO ANIMAL GENÉRICO ---");
  print("1. Llamando a hacerSonido():");
  animalGenerico.hacerSonido();
  
  print("\n2. Llamando a mostrarInfo():");
  animalGenerico.mostrarInfo();
  
  print("3. Llamando a esAdulto():");
  print("¿${animalGenerico.nombre} es adulto? ${animalGenerico.esAdulto()}");
  
  print("\n--- PROBANDO PERRO (HERENCIA) ---");
  print("1. Llamando a hacerSonido() (sobreescrito):");
  miPerro.hacerSonido();
  
  print("\n2. Llamando a mostrarInfo() (heredado):");
  miPerro.mostrarInfo();
  
  print("3. Llamando a esAdulto() (heredado):");
  print("¿${miPerro.nombre} es adulto? ${miPerro.esAdulto()}");
  
  // c) Llamar a método exclusivo de Perro
  print("\n--- MÉTODO EXCLUSIVO DEL PERRO ---");
  miPerro.buscarPelota();
  
  print("\n=== FIN DEL PROGRAMA ===");
}

