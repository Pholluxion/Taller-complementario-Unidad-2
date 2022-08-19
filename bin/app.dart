import 'package:taller_complementario/model/cola_prioridad_model.dart';
import 'package:taller_complementario/model/paciente_model.dart';

void main(List<String> arguments) {
  PriorityQueue priorityQueue = PriorityQueue();

  Patient patientLaura = Patient(
    name: 'Laura',
    age: 23,
    severity: 5,
  );
  Patient patientJuan = Patient(
    name: 'Juan',
    age: 21,
    severity: 5,
  );
  Patient patientMartha = Patient(
    name: 'Martha',
    age: 35,
    severity: 2,
  );
  Patient patientLucas = Patient(
    name: 'Lucas',
    age: 10,
    severity: 1,
  );
  Patient patientCarlos = Patient(
    name: 'Carlos',
    age: 26,
    severity: 5,
  );
  Patient patientDavid = Patient(
    name: 'David',
    age: 18,
    severity: 3,
  );
  Patient patientMaicol = Patient(
    name: 'Maicol',
    age: 43,
    severity: 1,
  );

  priorityQueue.insertNewPatient(patientMaicol);
  priorityQueue.insertNewPatient(patientDavid);
  priorityQueue.insertNewPatient(patientCarlos);
  priorityQueue.insertNewPatient(patientLucas);
  priorityQueue.insertNewPatient(patientMartha);
  priorityQueue.insertNewPatient(patientJuan);
  priorityQueue.insertNewPatient(patientLaura);

  for (int i = 0; i < (priorityQueue.length); i++) {
    print("$i - ${priorityQueue.patients[i].severity}");
  }

  priorityQueue.sortPriorityQueue();

  for (int i = 0; i < (priorityQueue.length); i++) {
    print(
        "ORDEN $i - ${priorityQueue.patients[i].severity} : ${priorityQueue.patients[i].name}");
  }

  print(priorityQueue.getNext()?.name);
}
