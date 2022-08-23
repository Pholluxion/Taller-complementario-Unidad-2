import 'dart:io';

import 'package:taller_complementario/model/paciente_model.dart';

class PriorityQueue {
  List<Patient> patients;

  PriorityQueue(int n) : patients = List.filled(n, Patient());

  get length => patients.length;

  void insertNewPatient(Patient patient) {
    for (Patient p in patients) {
      if (p.severity == patient.severity) {
        if (patient.age < 12 && patient.age > 0) {
          patient.setSeverity(1);
        } else if (patient.age > 65 && patient.age > 0) {
          patient.setSeverity(2);
        } else {
          patient.setSeverity(4);
        }
      }
    }

    for (int i = 0; i < (patients.length - 1); i++) {
      patients[i] = patients[i + 1];
    }
    patients[length - 1] = patient;
  }

  void getNext() {
    Patient nextPatient;

    for (Patient patient in patients) {
      if (patient.severity != null) {
        nextPatient = patient;
        stdout.write("\nSiguiente en la cola -> [ ${nextPatient.name} ]\n");
        stdout.write("${nextPatient.toString()}\n");
        patients[patients.indexOf(patient)] = Patient();
        break;
      }
    }
  }

  void sortPriorityQueue() {
    var aux = Patient();

    for (int i = 0; i < (patients.length - 1); i++) {
      for (int j = 0; j < (patients.length - i - 1); j++) {
        if (patients[j].severity != null && patients[j + 1].severity != null) {
          if (patients[j].severity! > patients[j + 1].severity!) {
            aux = patients[j];
            patients[j] = patients[j + 1];
            patients[j + 1] = aux;
          }
        }
      }
    }
  }

  void printPriorityQueue() {
    sortPriorityQueue();
    stdout.write("\n");
    stdout.write("Siguiente");
    for (Patient patient in patients) {
      if (patient.severity != null) {
        stdout.write(" -> ");
        stdout.write("[ ${patient.name} ]");
      }
    }
    stdout.write("\n");
  }
}
