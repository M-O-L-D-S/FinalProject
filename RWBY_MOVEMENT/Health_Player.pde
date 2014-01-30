class Pbar {

  color c1, c2;
  int x, y, w, h;
  PFont font;

  Pbar() {
    size (displayWidth, displayHeight);
    x = width/16;
    y = height/30;
    w = 500;
    h = 30;
    font = loadFont ("RWBY font.vlw");

    // Define colors
    c1 = color(0, 255, 0); 
    c2 = color(0, 190, 0);
  }

  void show () {
    setGradient();
    if (w <= 0) {
      lose = true;
      //      textFont (font, 50);
      //      textAlign (CENTER);
      //      text ("Back to class!", width/2, height/12);
    }
  }

  void setGradient() {

    if (pl_hit == true)
    {
      w -= 10;
    }

    c1 = color(255, 0, 0);
    c2 = color(0, 255, 0);
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }

    if (w <= 0) {
      lose = true;
      //      textFont (font, 50);
      //      textAlign (CENTER);
      //      text ("Back to class!", width/2, height/12);
      ruby = false;
      weiss = false;
      blake = false;
      yang = false;
    }
    println(lose);
  }
}

