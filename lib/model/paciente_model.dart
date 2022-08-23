///-Nombre Completo
///-Edad-Síntomas o motivo de consulta
///-Gravedad(Escala numérica de 1 a 5 siendo 1 la mayor gravedad)
///

// ignore_for_file: unnecessary_this

class Patient {
  String name;
  String details;
  int age;
  int? severity;

  Patient({
    this.name = '',
    this.age = 0,
    this.severity,
    this.details = "",
  });

  void setAge(age) => this.age = age;
  void setName(name) => this.name = name;
  void setDetails(details) => this.details = details;
  void setSeverity(severity) => this.severity = severity;

  @override
  String toString() {
    return "Nombre: ${this.name}\nEdad: ${this.age}\nSíntomas o motivo de consulta:${this.details}\nGravedad: ${this.severity}\n";
  }
}
