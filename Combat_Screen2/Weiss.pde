class Weiss {
  PImage bk, vl;
  int x, y;

  Weiss () {
    bk = loadImage ("Weiss.png");
    vl = loadImage ("Nevermore.png");
    x = 4*width/5;
    y = 205;
  }

  void show () {
    imageMode (CORNER);
    image (bk, 0, 0, displayWidth, displayHeight);
    imageMode (CENTER);
    image (vl, x, y);
  }
}
