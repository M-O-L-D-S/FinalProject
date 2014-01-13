class Sel {
  PImage sel;

  Sel () {
    sel = loadImage ("None.jpg");
  }

  void show () {
    imageMode (CENTER);
    image (sel, width/2, height/2, sel.width/2, sel.height/2);

    if (mouseX > 255 && mouseX < 460 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Ruby.png");
    }

    else if (mouseX > 494 && mouseX < 700 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Weiss.png");
    }

    else if (mouseX > 735 && mouseX < 942 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Blake.png");
    }

    else if (mouseX > 974 && mouseX < 1185 && mouseY > 166 && mouseY < 643) {
      sel =  loadImage ("Yang.png");
    }

    else {
      sel = loadImage ("None.jpg");
    }
    image (sel, width/2, height/2, sel.width/2, sel.height/2);
  }
}
