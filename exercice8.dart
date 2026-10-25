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