class Arm {
  float base;
  float leg;
  float alt;
  float theta;
  float oldxDist;
  float oldyDist;
  PVector a, b, c;
  float xDist;
  float yDist;
  float spunchSpeed;
  float upunchSpeed;
  float rspeed;


  Arm(Person t) {
    xDist = 25;
    yDist = 62;
    a = new PVector(t.loc.x, t.loc.y);
    b = new PVector(a.x+xDist, a.y+yDist);
    c = new PVector();
    spunchSpeed=8;
    upunchSpeed=15;
    rspeed=-5;
  }


  void display(Person t) {
    a = new PVector(t.loc.x + 30, t.loc.y + 80);
    if (right == true)
    {
      a = new PVector(t.loc.x + 280, t.loc.y + 290);
    }
//    if (left == true)
//    {
//      a = new PVector(t.loc.x + 2200, t.loc.y + 80);
//    }

    println(t.loc.x);
    b.x = a.x + xDist;
    b.y = a.y + yDist;
    line(a.x, a.y, c.x, c.y);
    line(b.x, b.y, c.x, c.y);
  }


  void work(Person t) {
    base = PVector.dist(a, b);
    println("base: " + base);


    //x and y values of how far b is from a
    PVector bottom = PVector.sub(b, a);


    //direction in which "base" or Bottom is pointing
    theta = bottom.heading();
    println("theta: " + theta);


    //rotate 90 d to get angl for alt  
    theta += PI/2;
    leg = 50;


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


  void straightPunch(Person t) {

    xDist+=spunchSpeed;
    yDist-=spunchSpeed/4;

    if (base>=97) 
    {
      base=97;
      spunchSpeed=-4;
    }

    if (xDist<oldxDist ) 
    {
      xDist=oldxDist;
      yDist=oldyDist;
      spunch=false;
      spunchSpeed=8;
    }
  }

  void upperCut(Person t)
  {

    xDist+=upunchSpeed;
    yDist-=upunchSpeed*1.5;

    if (base>=81) 
    {
      base=81;
      upunchSpeed=-4;
    }

    if (xDist<oldxDist)
    {
      xDist=oldxDist;
      yDist=oldyDist;
      upunch=false;
      upunchSpeed=15;
    }
  }

  //  void reflex(){
  //    xDist-=5;
  //    yDist-=1;
  //       if (base>=300) {
  //      rspeed=4;
  //    }
  //    if (xDist<oldxDist) {
  //      xDist=oldxDist;
  //     reflex=false;
  //      rspeed=-5;
  //    }
  //  }
} 

