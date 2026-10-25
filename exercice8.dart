class Livre {
  String titre;
  String auteur;
  int _pages;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur, [this._pages = 200]) {
  totalLivres++;
}

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }
int get pages => _pages;

static void afficherTotal() {
  print('Nombre total de livres : $totalLivres');
}
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre)
      : super(titre, auteur);

  void afficherGenre() {
    afficherInfos();
    print('Genre: $genre');
  }
}


void main() {
  var livre1 = Livre('Le Petit Prince', 'Saint-Exupéry');
  var livre2 = Livre('Les Misérables', 'Victor Hugo');

  livre1.afficherInfos();
  livre2.afficherInfos();

  var roman1 = Roman(
    'Sherlock Holmes',
    'Arthur Conan Doyle',
    'Policier',
  );

  var roman2 = Roman(
    'Orgueil et Préjugés',
    'Jane Austen',
    'Romance',
  );

  roman1.afficherGenre();
  roman2.afficherGenre();

  Livre.afficherTotal();
}