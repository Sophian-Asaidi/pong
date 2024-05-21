int SCORE_JOUEUR1 = 0;
int SCORE_JOUEUR2 = 0;
Ball b ;



/**
 * Fonction qui initialise le score du jeu
 * @param b
 * @author Sophian
 */
void checkPoint(Ball b) {
  if (b.x+(BALL_WIDTH/2) > width)
  {
    b.x = width/2;
    b.y = height/2;
    SCORE_JOUEUR1 += 1;
  }
  if (b.x - BALL_WIDTH/2 < 0)
  {
    b.x = width/2;
    b.y = height/2;
    SCORE_JOUEUR2 += 1;
  }
}

void showScores() {
  fill(#4280E8);
  PFont font;
  font = loadFont("Bauhaus93-42.vlw");
  textFont(font, 42);
  textAlign(CENTER, CENTER);
  text("SCORE", (width/2)-0-0, height/15);
  text(SCORE_JOUEUR1, (width/2)-30-16, height/7);
  text(SCORE_JOUEUR2, (width/2)+30+16, height/7);
}
