float base;
float leg;
float alt;
float theta;

PVector a, b, c;
float x,y;
void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  a = new PVector(width/2,height/2);
  b = new PVector(mouseX, mouseY);
  fill(0);
  x=b.x-400;
  y=b.y-400;
  text("x: " + x + "   y: " + y,400, 100);
  text("base "+base,400,20);
  c = new PVector();
  base = PVector.dist(a, b);

  //x and y values of how far b is from a
  PVector bottom = PVector.sub(b, a);
 
  //direction in which "base" or Bottom is pointing
  theta = bottom.heading();
  text("theta "+ theta,400,200);
 
  //rotate 90 d to get angl for alt  
  theta += PI/2;
  leg = 200;
 
  //length of alt
  alt = sqrt(sq(leg) - (sq(base/2)));
 
  //one unit long pvector at angle theta  
  PVector something = PVector.fromAngle(theta);
 
  //now its the length of alt that we calculated
  something.mult(alt);
 
  //midpoint of line between a,b
  PVector c = PVector.lerp(a, b, .5);
 
  //makes a line from the midpoint with length alt and angle theta
  c.add(something);

  line(a.x, a.y, c.x, c.y);
  line(b.x, b.y, c.x, c.y);
}


