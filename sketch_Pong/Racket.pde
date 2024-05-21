/** largeur d'une raquette */
final int RACKET_WIDTH  = 10;
/** hauteur d'une raquette */
final int RACKET_HEIGHT = 40;
/** vitesse de déplacement vertical d'une raquette */
final int RACKET_SPEED  = 7;
/** distance du bord de la fenêtre pour la raquette */
final int BORDER_SPACE  = 20;



/**
 * Une raquette avec couleur.
 */
class Racket {
  int x;
  int y;
  int largeur;
  int hauteur;
  color col;
  int mvtY;


  /** constructeur de racket.
   */
  Racket(int xR, color cR) {
    x = xR;
    y = (height/2)-(RACKET_HEIGHT/2);
    largeur = RACKET_WIDTH;
    hauteur = RACKET_HEIGHT;
    col = cR;
    mvtY = 0;
  }
}


/**
 * Fonction qui dessine la Racket
 * @param r
 */
void showRacket (Racket r){
  fill(r.col);
  rect(r.x, r.y, r.largeur, r.hauteur);
}

/**
 * Fonction permettant le mouvement de la Racket sur l'axe des ordonnées
 * @param r
 */
void moveRacket(Racket r){
  r.y += r.mvtY;
}
