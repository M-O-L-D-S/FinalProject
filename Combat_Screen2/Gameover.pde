class Over {
  PImage bk;

  Over () {
    bk = loadImage ("classroom.png");
  }

  void show () {
    imageMode (CORNER);
    image (bk, 0, 0, displayWidth, displayHeight);
  }
}

