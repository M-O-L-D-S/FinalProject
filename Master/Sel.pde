class Sel {
  PImage sel;
  PFont Font;

  Sel () {
    sel = loadImage ("None.jpg");
    Font = loadFont ("Font.vlw");
    
  }

  void show () {
    textAlign (CENTER);
    textFont (Font, 50);
    imageMode (CENTER);
    image (sel, width/2, height/2, sel.width/2, sel.height/2);

    if (mouseX > 255 && mouseX < 460 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Sel_Ruby.png");
      fill (239, 7, 7);
      text ("Ruby", sel.width/8+40, 165);
    }

    else if (mouseX > 494 && mouseX < 700 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Sel_Weiss.png");
      fill (209, 219, 244);
      text ("Weiss", sel.width/8+270, 165);
    }

    else if (mouseX > 735 && mouseX < 942 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Sel_Blake.png");
      fill (100, 100, 100);
      text ("Blake", sel.width/8+520, 165);
    }

    else if (mouseX > 974 && mouseX < 1185 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Sel_Yang.png");
      fill (238, 221, 68);
      text ("Yang", sel.width/8+750, 165);
    }

    else {
      sel = loadImage ("None.jpg");
      text("Please choose.", width/2, height/2);
    }
    image (sel, width/2, height/2, sel.width/2, sel.height/2);
  }
}

