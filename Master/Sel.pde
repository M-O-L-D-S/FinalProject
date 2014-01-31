class Sel {
  PImage sel;
  PFont Font;
  int x, y, a, b, c, d;

  Sel () {
    sel = loadImage ("None.jpg");
    Font = loadFont ("Font.vlw");
    x = displayWidth/2;
    y = displayHeight/2;
    a = x - 4*x/7 +50 ;
    b = x - x/6;
    c = x + x/6;
    d = x + 4*x/7 - 50;
  }

  //Creates a character selection screen

  void show (Timer ti) {
    textAlign (CENTER);
    textFont (Font, 50);
    imageMode (CENTER);
    image (sel, width/2, height/2, sel.width/2, sel.height/2);

    if (mouseX > a - 75 && mouseX < a + 75 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Ruby.png");
      fill (239, 7, 7);
      text ("Ruby", a, 165);
      fill(239, 7, 7, 80);
      stroke(239, 7, 7, 90);
      rect(a, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", a, 680);
      if (mouseX > a - 75 && mouseX < a + 75 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        ruby = true;
      }
    }


    if (mouseX > b-100 && mouseX < b+100 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Weiss.png");
      fill (209, 219, 244);
      text ("Weiss", b, 165);
      fill(209, 219, 244, 80);
      stroke(209, 219, 244, 90);
      rect(b, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", b, 680);
      if (mouseX > b-100 && mouseX < b+100 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        weiss = true;
      }
    }

    if (mouseX > c-150 && mouseX < c+150 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Blake.png");
      fill (100, 100, 100);
      text ("Blake", c, 165);
      fill(100, 100, 100, 80);
      stroke(100, 100, 100, 90);
      rect(c, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", c, 680);
      if (mouseX > c-150 && mouseX < c+150 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        blake = true;
      }
    }

    if (mouseX > d-175 && mouseX < d+175 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Yang.png");
      fill (238, 221, 68);
      text ("Yang", d, 165);
      fill(238, 221, 68, 80);
      stroke(238, 221, 68, 90);
      rect(d, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", d, 680);
      if (mouseX > d-175 && mouseX < d+175 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        yang = true;
      }
    }
  }
}

