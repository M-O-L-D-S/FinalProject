class Bar {

  //  int X_AXIS = 1;
  color c1, c2;
  int x, y, w, h;

  Bar() {
    size (displayWidth, displayHeight);
    x = 3*width/4;
    y = height/12;
    w = 200;
    h = 35;

    // Define colors
    c1 = color(190, 0, 0);
    c2 = color(255, 0, 0);
  }

  void show () {
    setGradient(x, y, w, h, c2, c1);
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

