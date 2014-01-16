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
  background (240, 240, 240);
  image (R, width/9, height/9);
  image (W, 8*width/9, 9*height/11, W.width/2, W.height/2);
  image (B, 8*width/9, height/6, B.width/3, B.height/3);
  image (Y, width/9, heighht/9, Y.width/2, Y.height/2);
}

