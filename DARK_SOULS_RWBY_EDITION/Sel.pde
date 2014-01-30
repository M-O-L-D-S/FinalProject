
class Sel {
  PImage sel;
  PFont Font;
  boolean rub, wei, bla, yan;

  Sel () {
    sel = loadImage ("None.jpg");
    Font = loadFont ("Font.vlw");
  }

  void show (Timer ti) {
    textAlign (CENTER);
    textFont (Font, 50);
    imageMode (CENTER);
    image (sel, width/2, height/2, sel.width/2, sel.height/2);

    if (mouseX > 325 && mouseX < 550 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Ruby.png");
      fill (239, 7, 7);
      text ("Ruby", sel.width/8+190, 165);
      fill(239, 7, 7, 80);
      stroke(239, 7, 7, 90);
      rect(440, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", 440, 680);
      if (mouseX > 325 && mouseX < 650 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        ruby = true;
      }
    }


    if (mouseX > 550 && mouseX < 795 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Weiss.png");
      fill (209, 219, 244);
      text ("Weiss", sel.width/8+420, 165);
      fill(209, 219, 244, 80);
      stroke(209, 219, 244, 90);
      rect(680, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", 680, 680);
      if (mouseX > 530 && mouseX < 785 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        weiss = true;
      }
    }



    if (mouseX > 795 && mouseX < 1030 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Blake.png");
      fill (100, 100, 100);
      text ("Blake", sel.width/8+670, 165);
      fill(100, 100, 100, 80);
      stroke(100, 100, 100, 90);
      rect(920, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", 920, 680);
      if (mouseX > 815 && mouseX < 1025 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        blake = true;
      }
    }

    if (mouseX > 1030 && mouseX < 1275 && mouseY > 200 && mouseY < 700) {
      sel =  loadImage ("Sel_Yang.png");
      fill (238, 221, 68);
      text ("Yang", sel.width/8+900, 165);
      fill(238, 221, 68, 80);
      stroke(238, 221, 68, 90);
      rect(1160, 670, 205, 48);
      textSize(30);
      fill(0);
      text("Click Here", 1160, 680);
      if (mouseX > 1055 && mouseX < 1265 && mouseY > 640 && mouseY < 725 && mousePressed)
      { 
        yang = true;
      }
    }

    //    else {
    //      sel = loadImage ("None.jpg");
    //      text("Please choose.", width/2, height/2);
    //    }
    //    image (sel, width/2, height/2, sel.width/2, sel.height/2);
  }
}

