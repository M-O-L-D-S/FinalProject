class Sel {
  PImage sel;

  Sel () {
    sel = loadImage ("None.jpg");
  }

  void show () {
    textAlign (CENTER);
    textSize(50);
    imageMode (CENTER);
    image (sel, width/2, height/2, sel.width/2, sel.height/2);

    if (mouseX > 255 && mouseX < 460 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Ruby.png");
      fill (239, 7, 7);
      text ("Ruby", 368, 165);
    }

    else if (mouseX > 494 && mouseX < 700 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Weiss.png");
      fill (209, 219, 244);
      text ("Weiss", 600, 165);
    }

    else if (mouseX > 735 && mouseX < 942 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Blake.png");
      fill (200, 200, 200);
      text ("Blake", 840, 165);
    }

    else if (mouseX > 974 && mouseX < 1185 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Yang.png");
      fill (238, 221, 68);
      text ("Yang", 1070, 165);
    }

    else {
      sel = loadImage ("None.jpg");
      text("Please choose.", width/2, height/2);
    }
    image (sel, width/2, height/2, sel.width/2, sel.height/2);
  }
}

