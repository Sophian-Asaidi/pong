// Constantes - Couleurs //<>//

final color NOIR = color(0);
final color BLANC = color(255);
final color ROUGE = color(255, 0, 0);
final color VERT = color(0, 255, 0);
final color BLEU = color(0, 0, 255);
Racket rBleu, rVert;

// Etat du jeu

/** Gestion de la pause */
boolean enPause = false;

/** La balle */
Ball ball;

/**
 * Fonction d'initialisation Processing.
 */
void setup()
{
  size(640, 400);
  rBleu = new Racket(30, BLEU);
  rVert = new Racket(600, VERT);

  // on initialise nos objets
  ball = new Ball();
}

/**
 * Fonction de rafraichissement Processing.
 */
void draw()
{
  showImage();
  showBall(ball); 
  moveBall(ball);
  showRacket(rBleu);
  showRacket(rVert);
  moveRacket(rVert);
  moveRacket(rBleu);
  checkPoint(ball);
  showScores();
}

void keyPressed()
{
  switch (key)
  {
  case 'a' :
    rBleu.mvtY =- RACKET_SPEED;
    break;
  case 'z' :
    rBleu.mvtY =+ RACKET_SPEED;
    break;
  case'o' :
    rVert.mvtY =+ RACKET_SPEED;
    break;
  case'p' :
    rVert.mvtY =- RACKET_SPEED;
    break;
  case' ' :
    if (enPause == false) {
      text("STOP", width/2, height/2);
      noLoop();
      enPause = true;
    } else if (enPause == true)
    {
      loop();
      enPause = false;
    }
  }
}

void keyReleased() {
  switch (key)
  {
  case 'a' :
    rBleu.mvtY = 0;
    break;
  case 'z' :
    rBleu.mvtY = 0;
    break;
  case'o' :
    rVert.mvtY = 0;
  case'p' :
    rVert.mvtY = 0;      
  }
}
