/* Ce projet est inspiré de la Grande roue de paris */

ArrierePlan[] fond = new ArrierePlan[1000];  //Tableau de gestion des étoiles(arrière plan);
Roue[] rectangle = new Roue[15];
Roue roue;

float VitesseRoue = 0.02;
boolean arret_Roue= false;
float alpha;

void setup() {
  size(600, 600);

  frameRate(80);
  for (int i=0; i < fond.length; i++) {
    fond[i] = new ArrierePlan( random(1, 10));   // Boucle initialisant le Tab de l'arrère plan
  }

  roue = new Roue(width/2, height/2, height/3); //

  for (int j=0; j < rectangle.length; j++) {
    rectangle[j] = new Roue( color(#FA1225));
  }
}

void draw() {
  background(0);

  for (int i=0; i < fond.length; i++) {
    fond[i].dessiner(color(255 - random(70)));
    fond[i].animer();
    if (fond[i].collision(mouseX, mouseY))
      fond[i].dessiner(color(255, 255, 90));
    fond[i].deplacerVers(roue.changerDirection());
  } 
  /* changement de direction de la roue */
  roue.cercle (roue.x, roue.y, 2*roue.r, color(255, 255, 0));

  for (int j=0; j < rectangle.length; j++) {
    for (int angle=0; angle <= rectangle.length-1; angle++) {
      rectangle[j].fairePivoter(roue.x, roue.y, roue.r, angle);
    }
  }
  fill(255, 0, 0);
  roue.cercle (roue.x, roue.y, roue.r, color(255, 255, 0)); 
  roue.dessinerBase();
  roue.afficherTexte ();
}

void mousePressed() {
  arret_Roue=!arret_Roue;
}

//Utliser le clavier pour changer le sens d'orientation
void keyPressed() {
  VitesseRoue= -VitesseRoue;
}
