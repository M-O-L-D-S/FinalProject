Ruby r1;
Weiss w1;
Blake b1;
Yang y1;
Vbar v1;
Pbar p1;
Over o1;
Won wn1;

void setup () {
  size (displayWidth, displayHeight);
  r1 = new Ruby ();
  w1 = new Weiss ();
  b1 = new Blake ();
  y1 = new Yang ();
  v1 = new Vbar ();
  p1 = new Pbar ();
  o1 = new Over ();
  wn1 = new Won ();
}

void draw () {
  //r1.show();
  //w1.show();
  b1.show();
  //y1.show();

  v1.show ();
  p1.show ();
}

