class Won {
  PImage bk;

  Won () {
    bk = loadImage ("rwby.png");
  }

  void show () {
    imageMode(CORNER);
    image (bk, 0, 0, displayWidth, displayHeight);
    textSize(72);
    textAlign(CENTER);
    text("You win! You're a true Huntress.", width/2, 75);
  }
}

