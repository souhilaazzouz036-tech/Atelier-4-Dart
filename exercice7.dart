class Tache {
  String description;
  static int nombreTotal = 0;
  Tache(this.description) {
  nombreTotal++;
}
}

void main() {
  var tache1 = Tache('Faire les devoirs');
  var tache2 = Tache('Etudier Dart');
  var tache3 = Tache('Faire les exercices');

  print(tache1.description);
  print(tache2.description);
  print(tache3.description);

  print('Nombre total : ${Tache.nombreTotal}');
}