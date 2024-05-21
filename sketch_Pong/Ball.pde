/** largeur (ou diamètre) de la balle */
final int BALL_WIDTH = 10;
/** vitesse de déplacement de la balle */
final int BALL_SPEED = 3;
/** couleur de la balle */
final color BALL_COLOR = BLANC; 

/**
 * Une balle.
 */
class Ball {

  /** abscisse du centre de la balle */
  int x;

  /** ordonnée du centre de la balle */
  int y;

  /** mouvement sur l'axe des abscisses */
  int mvt_x;

  /** mouvement sur l'axe des ordonnées */
  int mvt_y;

  /**
   * Initialisation d'une balle : tous les attributs prennent des valeurs par défaut.
   */
  Ball() {
    x = width/2;
    y = height/2;
    mvt_x = BALL_SPEED;
    mvt_y = BALL_SPEED;
  }
}

/**
 * Affichage de la balle
 * @param b
 * @author Sophian
 */
void showBall(Ball b)
{
  fill(BALL_COLOR);
  ellipse(b.x, b.y, BALL_WIDTH, BALL_WIDTH);
}

/**
 * Déplacement de la balle
 * @param b
 * @author Sophian
 */
void moveBall(Ball b)
{
  
  // Mouvement Horizontal
  b.x += b.mvt_x;
  if (collisionRacket(b, rVert))
  {
    b.x -= b.mvt_x; // mouvement annulé
    b.mvt_x *= -1; // changement de direction
  }

  // Mouvement Vertical
  b.y += b.mvt_y;
  if (collisionVerticale(b)|| collisionRacket(b, rVert))
  {
    b.y -= b.mvt_y; // mouvement annulé
    b.mvt_y *= -1; // changement de direction
  }
}



/**
 * Retourne vrai si la balle entre en collision sur l'axe des absices
 * @param b
 * @return coordonnées de b en y
 * @author Sophian
 */
boolean collisionVerticale(Ball b)
{
  return (b.y+BALL_WIDTH/2 > height) || (b.y < BALL_WIDTH/2);
}



/**
 * Collision de la balle sur les Rackets
 * 
 * @param b
 * @param rVert
 * @return collision
 * @author Sophian
 */
boolean collisionRacket(Ball b, Racket rVert)
{
  boolean collision = false;
  if (((b.x - (BALL_WIDTH/2) > rBleu.x)) && ((b.x - (BALL_WIDTH/2)) < rBleu.x + RACKET_WIDTH) && ((b.y + (BALL_WIDTH/2)) > rBleu.y) && ((b.y + (BALL_WIDTH/2)) < rBleu.y + RACKET_HEIGHT)) {
     collision = true;
  }
  if (((b.x + BALL_WIDTH/2) > rVert.x) && ((b.x + (BALL_WIDTH/2)) < rVert.x + RACKET_WIDTH) &&  ((b.y + (BALL_WIDTH/2)) > rVert.y) && ((b.y + (BALL_WIDTH/2)) < rVert.y + RACKET_HEIGHT)) {
    collision = true;
  }
  return collision;
}
