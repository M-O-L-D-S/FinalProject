class Over {
  PImage bk;
  PFont font;

  Over () {
    bk = loadImage ("classroom.png");
    font = loadFont ("RWBY font.vlw");
  }

  void show() {
    imageMode (CORNER);
    image (bk, 0, 0, displayWidth, displayHeight);
    textFont (font, 72);
    textAlign(CENTER);
    text("You lose! Back to the classroom.", width/2, 75);
    
  }

  void  win() {
    imageMode(CORNER);
    image (bk, 0, 0, displayWidth, displayHeight);
    textSize(72);
    textAlign(CENTER);
    text("You lose! Back to the classroom.", width/2, 75);
  }
}

