class Vbar {

  color c1, c2;
  int x, y, w, h;
  PFont font;

  Vbar() {
    size (displayWidth, displayHeight);
    x = 5*width/8;
    y = height/15;
    w = 200;
    h = 30;
    font = loadFont ("RWBY font.vlw");

    // Define colors
    c1 = color(255, 0, 0); 
    c2 = color(190, 0, 0);
  }

  void show () {
    setGradient(x, y, w, h, c2, c1);
    if (w <= 0) {
      wn1.show ();
    }
  }

  void setGradient(int x, int y, float w, float h, color c1, color c2) {
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}

