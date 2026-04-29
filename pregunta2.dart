// Clase padre CuentaBancaria
class CuentaBancaria {
  String titular;
  String numeroCuenta;
  double saldo;
  
  CuentaBancaria(this.titular, this.numeroCuenta, this.saldo);
  
  void depositar(double monto) {
    saldo += monto;
    print("Depósito de \$${monto}. Nuevo saldo: \$${saldo}");
  }
  
  void retirar(double monto) {
    if (monto <= saldo) {
      saldo -= monto;
      print("Retiro de \$${monto}. Nuevo saldo: \$${saldo}");
    } else {
      print("Error: Fondos insuficientes. Saldo actual: \$${saldo}");
    }
  }
  
  void mostrarEstado() {
    print("\n=== CUENTA BANCARIA ===");
    print("Titular: $titular");
    print("N° Cuenta: $numeroCuenta");
    print("Saldo: \$${saldo}");
    print("=======================\n");
  }
}

// Clase CuentaEmpresarial que hereda de CuentaBancaria
class CuentaEmpresarial extends CuentaBancaria {
  double limiteCredito;
  
  CuentaEmpresarial(String titular, String numeroCuenta, double saldo, this.limiteCredito) 
      : super(titular, numeroCuenta, saldo);
  
  void solicitarCredito(double monto) {
    if (monto <= limiteCredito) {
      saldo += monto;
      print("✓ Crédito de \$${monto} APROBADO. Nuevo saldo: \$${saldo}");
    } else {
      print("✗ Crédito de \$${monto} RECHAZADO. Límite disponible: \$${limiteCredito}");
    }
  }
}

void main() {
  // d) Probar CuentaBancaria
  print("=== DEMOSTRACIÓN CUENTA BANCARIA ===");
  CuentaBancaria cuenta1 = CuentaBancaria("Ana López", "123456", 1000);
  cuenta1.mostrarEstado();
  
  cuenta1.depositar(500);
  cuenta1.retirar(300);    // Válido
  cuenta1.retirar(2000);   // Inválido
  
  // e) Probar CuentaEmpresarial
  print("\n=== DEMOSTRACIÓN CUENTA EMPRESARIAL ===");
  CuentaEmpresarial empresa = CuentaEmpresarial("Carlos Ruiz", "789012", 5000, 3000);
  empresa.mostrarEstado();
  
  empresa.solicitarCredito(2000);  // Aprobado
  empresa.solicitarCredito(5000);  // Rechazado
}
