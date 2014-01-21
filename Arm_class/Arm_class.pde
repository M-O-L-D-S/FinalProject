class Arm {
  float base;
  float leg;
  float alt;
  float theta;
  float oldxDist;
  PVector a, b, c;
  float xDist;
  float yDist;
  float spunchSpeed;
  float upunchSpeed;
  float rspeed;

  Arm() {
    xDist = 100;
    yDist = 250;
    a = new PVector(100, 100);
    b = new PVector(a.x+xDist, a.y+yDist);
    c = new PVector();
    spunchSpeed=8;
    upunchSpeed=15;
    rspeed=-5;
  }

  void display() {
    b.x = a.x + xDist;
    b.y = a.y + yDist;
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

  void straightPunch() {
    xDist+=spunchSpeed;
    yDist-=spunchSpeed/4;
    if (base>=390) {
      spunchSpeed=-4;
    }
    if (xDist<oldxDist) {
      xDist=oldxDist;
      spunch=false;
      spunchSpeed=8;
    }
  }
  
  void upperCut(){
     xDist+=upunchSpeed;
    yDist-=upunchSpeed*2;
    if (base>=330) {
      upunchSpeed=-4;
    }
    if (xDist<oldxDist) {
      xDist=oldxDist;
      upunch=false;
      upunchSpeed=15;
    }
  }
  
  void reflex(){
    xDist-=5;
    yDist-=1;
       if (base>=300) {
      rspeed=4;
    }
    if (xDist<oldxDist) {
      xDist=oldxDist;
     reflex=false;
      rspeed=-5;
    }
  }
} 

