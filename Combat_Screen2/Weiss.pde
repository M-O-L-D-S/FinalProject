class Weiss {
  PImage bk, vl;
  int VillainX, VillainY;

  Weiss () {
    bk = loadImage ("Weiss.png");
    vl = loadImage ("Nevermore.png");
    VillainX = 4*width/5;
    VillainY = 2*height/6;
  }

  void show () {
    imageMode (CORNER);
    image (bk, 0, 0, displayWidth, displayHeight);
    imageMode (CENTER);
    image (vl, VillainX, VillainY);
  }
}

