PImage R, W, B, Y;
PFont font;
int y;

void setup () {
  size (displayWidth, displayHeight);
  R = loadImage ("Ruby.png");
  W = loadImage ("Weiss.png");
  B = loadImage ("Blake.png");
  Y = loadImage ("Yang.png");
  font = loadFont ("RWBY font.vlw");
  y = height/3;
}

void draw () {
  imageMode (CENTER);
  background (240, 240, 240);
  image (R, width/9, height/9);
  image (W, 8*width/9, 9*height/11, W.width/2, W.height/2);
  image (B, 8*width/9, height/6, B.width/3, B.height/3);
  image (Y, width/9, 9*height/11, Y.width/2, Y.height/2);
  textFont (font, 50);
  fill (0);
  textAlign (CENTER);
  text("RWBY:", width/2, y);
  text ("the Ultimate", width/2, y+100);
  text ("Steven Neeson", width/2, y+200);
  text ("Experience", width/2, y+300);
}

