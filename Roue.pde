class Roue {
  //Attributs
  float x;
  float y;
  float r;
  color couleur;


  //Contructeurs
  Roue(float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }
  
  Roue (color couleur) {
    this.couleur = couleur;
  }
  
   //Methodes
  void fairePivoter(float x, float y, float r, float beta) {

    float posX = x + cos(radians(alpha + (360/rectangle.length)*beta))*(r); 
    float posY = x + sin(radians(alpha + (360/rectangle.length)*beta))*(r);
    fill(couleur);
    line(x, y, posX, posY); 
    stroke(200);
    rect(posX, posY, 25, 25);
  }
  

 
  float changerDirection(){
    if (arret_Roue==false) {
      alpha+=VitesseRoue;
    }
    return -VitesseRoue;
  }
  
  
  void cercle (float x, float y, float r, color couleur) {
    stroke(couleur);  
    noFill();
    strokeWeight(3);
    ellipse(x, y, r, r);
  }
  
  // La base de la GRANDE ROUE
  void dessinerBase() {
    strokeWeight(6);
    stroke(0, 10, 255);
    line(x, y, x, 1.75*y); //ligne du centre
    line(x, y, x/2, 1.75*y );
    line(x, y, 3*x/2, 1.75*y ); //Ligne de droite

    //la base de la roue
    //noStroke();
    fill(255, 90, 0);
    strokeWeight(20);
    line(x/2, 1.75*y, 3*x/2, 1.75*y );
  }

  void afficherTexte () {
    //Afffichage du texte
    textAlign(CENTER);
    textSize(20);
    fill(20, 20, 255);
    text("PROJET S2 - UNIVERSITE DU HAVRE NORMANDIE", width/2, height/20); 
    fill(#FA081C);
    text("BIENVENUE A LA FOIRE", width/2, height/12);
  }
}
