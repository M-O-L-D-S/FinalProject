class Vbar {

  color c1, c2;
  int x, y, w = 10, h;
  PFont font;


  Vbar() {
    size (displayWidth, displayHeight);
    x = 5*width/8;
    y = height/30;
    w = 500;
    h = 30;
    font = loadFont ("RWBY font.vlw");

    // Define colors
    c1 = color(255, 0, 0); 
    c2 = color(190, 0, 0);
  }

  void show () {
    setGradient();
    if (w <= 0) {
      wn1.show ();
    }
  }

  void setGradient() {

    //    x = 5*width/8;
    //    y = height/30;
    //    w = 500;

    if (en_hit == true)
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
      win = true;
      ruby = false;
      weiss = false;
      blake = false;
      yang = false;
    }
  }
}

