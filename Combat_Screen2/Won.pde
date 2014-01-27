class Won {
  PImage bk;

  Won () {
    bk = loadImage ("rwby.png");
  }

  void show () {
    image (bk, 0, 0, displayWidth, displayHeight);
  }
}

