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
    setGradient(test, r1, w1, b1, y1);
    if (w <= 0) {
      wn1.show ();
    }
  }
  
  //Displays enemy health bar and effect of attacks on enemies

  void setGradient(Person t, Ruby r, Weiss we, Blake b, Yang ya) {

    if (en_hit == true)
    {
      w -= 15;
    }
    
    if (dist(t.loc.x+275, t.loc.y+225, r.vloc.x-50, r.vloc.y+25) < 100 && (spunch == true || upunch == true))
    {
     w -= 15; 
    }
    
    if (dist(t.loc.x+275, t.loc.y+225, we.vloc.x-50, we.vloc.y+25) < 100 && (spunch == true || upunch == true))
    {
     w -= 15; 
    }
    
    if (dist(t.loc.x+275, t.loc.y+225, b.vloc.x-50, b.vloc.y+25) < 100 && (spunch == true || upunch == true))
    {
     w -= 15; 
    }
    
    if (dist(t.loc.x+275, t.loc.y+225, ya.vloc.x-50, ya.vloc.y+25) < 100 && (spunch == true || upunch == true))
    {
     w -= 15; 
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

