class Arm {
  float base;
  float leg;
  float alt;
  float theta;

  PVector a, b, c;
  float xDist;
  float yDist;


  Arm() {
    xDist = 100;
    yDist = 250;
    a = new PVector(100, 100);
    b = new PVector(a.x+xDist, a.y+yDist);
    c = new PVector();
  }

  void display() {
  
    line(a.x, a.y, c.x, c.y);
    line(b.x, b.y, c.x, c.y);
  }

  void work() {
    base = PVector.dist(a, b);
    println("base: " + base);

    //x and y values of how far b is from a
    PVector bottom = PVector.sub(b, a);

    //direction in which "base" or Bottom is pointing
    theta = bottom.heading();
    println("theta: " + theta);

    //rotate 90 d to get angl for alt  
    theta += PI/2;
    leg = 200;

    //length of alt
    alt = sqrt(sq(leg) - (sq(base/2)));
    println("alt: " + alt);

    //one unit long pvector at angle theta  
    PVector something = PVector.fromAngle(theta);

    //now its the length of alt that we calculated
    something.mult(alt);

    //midpoint of line between a,b
    c = PVector.lerp(a, b, .5);

    //makes a line from the midpoint with length alt and angle theta
    c.add(something);
  }
}

