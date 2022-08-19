import 'package:taller_complementario/model/paciente_model.dart';

class PriorityQueue {
  List<Patient> patients = List.filled(20, Patient());

  PriorityQueue();

  get length => patients.length;

  void insertNewPatient(Patient patient) {
    for (int i = 0; i <= (patients.length - 2); i++) {
      patients[i] = patients[i + 1];
    }
    patients[19] = patient;
  }

  Patient? getNext() {
    Patient? patient;

    for (int i = 0; i < patients.length; i++) {
      if (patients[i].severity != 0) {
        patient = patients[i];
        return patient;
      }
    }
    return null;
  }

  void sortPriorityQueue() {
    var aux = Patient();
    for (int i = 0; i < (patients.length - 1); i++) {
      for (int j = 0; j < (patients.length - i - 1); j++) {
        if (patients[j].severity > patients[j + 1].severity) {
          aux = patients[j];
          patients[j] = patients[j + 1];
          patients[j + 1] = aux;
        }
      }
    }
  }
}
