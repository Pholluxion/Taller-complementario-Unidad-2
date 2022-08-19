///-Nombre Completo
///-Edad-Síntomas o motivo de consulta
///-Gravedad(Escala numérica de 1 a 5 siendo 1 la mayor gravedad)
///

class Patient {
  final String name;
  final int age;
  final int severity;

  const Patient({
    this.name = '',
    this.age = 0,
    this.severity = 0,
  });
}
