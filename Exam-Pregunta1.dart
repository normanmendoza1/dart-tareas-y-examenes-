import 'dart:math';

// Clase base
class Figura {
  String nombre;
  String color;
  int numLados;

  // Constructor
  Figura(this.nombre, this.color, this.numLados);

  // Método describir
  void describir() {
    print("Soy una figura llamada $nombre de color $color.");
  }

  // Método mostrarInfo
  void mostrarInfo() {
    print("Nombre: $nombre");
    print("Color: $color");
    print("Número de lados: $numLados");
  }

  // Método tieneMuchosLados
  bool tieneMuchosLados() {
    return numLados > 4;
  }
}

// Clase derivada
class Circulo extends Figura {

  // Constructor: círculo tiene 0 lados
  Circulo(String nombre, String color) : super(nombre, color, 0);

  // Sobrescritura de describir
  @override
  void describir() {
    print("Soy un círculo llamado $nombre de color $color, no tengo lados.");
  }

  // Método calcularArea
  double calcularArea(double radio) {
    return pi * radio * radio;
  }
}

// Función principal para probar
void main() {
  Figura cuadrado = Figura("Cuadrado", "Rojo", 4);
  cuadrado.describir();
  cuadrado.mostrarInfo();
  print("¿Tiene muchos lados? ${cuadrado.tieneMuchosLados()}");

  print("\n");

  Circulo circulo = Circulo("Círculo", "Azul");
  circulo.describir();
  circulo.mostrarInfo();
  print("Área con radio 5: ${circulo.calcularArea(5)}");
}
