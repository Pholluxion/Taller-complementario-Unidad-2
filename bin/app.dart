import 'dart:io';

import 'package:console/console.dart';
import 'package:taller_complementario/model/paciente_model.dart';
import 'package:taller_complementario/model/cola_prioridad_model.dart';

void main(List<String> arguments) {
  loopApp();
}

void loopApp() {
  PriorityQueue priorityQueue = PriorityQueue(10);
  Console.init();

  while (true) {
    final opc = _initChooser(opcMenu);

    if (opc == 'Salir') {
      break;
    }

    switch (opc) {
      case 'Ingresar Paciente':
        final patient = Patient();

        stdout.write("\nNombre Completo del Paciente: ");
        var name = stdin.readLineSync();
        stdout.write("Edad del Paciente: ");
        var age = stdin.readLineSync();
        stdout.write("Síntomas o motivo de consulta: ");
        var details = stdin.readLineSync();
        stdout.write("Gravedad: ");
        var severity = stdin.readLineSync();
        stdout.write("\n");

        patient.setName(name);
        patient.setAge(int.parse(age!));
        patient.setDetails(details);
        patient.setSeverity(int.parse(severity!));

        priorityQueue.insertNewPatient(patient);

        priorityQueue.sortPriorityQueue();

        priorityQueue.printPriorityQueue();

        break;
      case 'Pasar siguiente paciente':
        priorityQueue.getNext();
        break;
      case 'Mostrar la cola':
        priorityQueue.printPriorityQueue();
        break;
    }
  }
}

List<String> opcMenu = [
  'Ingresar Paciente',
  'Pasar siguiente paciente',
  'Mostrar la cola',
  'Salir'
];

String _initChooser(List<String> opc) {
  stdout.write("\n");
  var chooser = Chooser<String>(
    opc,
    message: '\nSeleccione una opción: ',
  );
  return chooser.chooseSync();
}
