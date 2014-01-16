PImage R, W, B, Y;

void setup () {
  size (displayWidth, displayHeight);
  R = loadImage ("Ruby.png");
  W = loadImage ("Weiss.png");
  B = loadImage ("Blake.png");
  Y = loadImage ("Yang.png");
}

void draw () {
  imageMode (CENTER);
  background (255);
  image (R, 145, 95);
  image (W, 920, 585, W.width/2, W.height/2);
  image (B, 900, 150);
  image (Y, 150, 625, Y.width/2, Y.height/2);
  fill (0);
  textSize (50);
  text (mouseX, width/2, height/2);
  text(mouseY, width/2, height/2 +100);
}

