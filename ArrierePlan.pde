class ArrierePlan {
  //Attributs
  float a;
  float b;
  float taille;
  float tailleMax;

//Constructeurs
  ArrierePlan(float tailleMax ) {
    a  = random(width+5);
    b = random(height);
    this.tailleMax = tailleMax ;
    taille = tailleMax;
  }

  boolean collision(float x, float y) {
    return (dist(a, b, x, y) < tailleMax*10);
  }

  void dessiner(color couleur) {
    noStroke();
    fill(couleur);
    circle(a, b, taille);
  }

  void animer() {
    float tmp = TWO_PI * millis()/6000.0 ; //temps d'allumage des étoiles
    taille = map(sin(tmp), -1, 1, 0, tailleMax);
  }
  void deplacerVers (float xpos) {
    a+=xpos;
    b+=3;
    if (a > width || b > height) {
      a  = random(width+50);
      b = random(height );
    }
  }
}
