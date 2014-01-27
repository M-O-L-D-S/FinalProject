//Create person and arms
//Create variables that control person and arms 

Person test;

Arm a1, a2;
Arm_Left al1, al2;
boolean spunch=false;
boolean upunch=false;
boolean reflex=false;

Running run_r, run_l;
Timer T1 = new Timer();

PImage testback;

float jumpSpeed = 10;
boolean jump = false;

boolean movement = false;
boolean running = false;
boolean attack = false;
boolean walk = false;
boolean right = true;
boolean left = false;
boolean up = false;


int time1 = 0;
int time2 = 0;
int time3 = 0;

int number = 0;

//Initialize Blackbox
//Set framerate
//Set Size
//Load images
//Load classes
//Set strokeWeight

void setup()
{
  BlackBox.init(this);
  frameRate(24);
  size(displayWidth, displayHeight); 
  test = new Person();
  testback = loadImage("testback.jpg");
  run_r = new Running("Rwby_r", 18);
  run_l = new Running("Rwby_l", 18);
  a1=new Arm(test);
  a2=new Arm(test);
  al1 = new Arm_Left(test);
  al2 = new Arm_Left(test);

  strokeWeight(6);
}

//Create background
//Display, move, and set constraints for person "test"
//Display data (optional: Bug testing only)
//If player is facing right, set arms to right and run functions display and work for class arm
//If player is facing left, set arms to left and run functions display and work for class arm
//If player is running right, use right-facing array to display running player
//If player is facing left, use left-facing array to display running player
//If player is facing left, all arm-related variables and functions work so that arms move to the right
//If player is facing left, all arm-related variables and functions work so that arms move to the left


void draw()
{
  testback.resize(displayWidth, displayHeight);
  background(testback);
  test.display();
  test.move();
  test.constraints();
  jump(test);
//  data();


  if (right == true)
  {
    a1.display(test);
    a1.work(test);
    a2.work(test);
    a2.display(test);
  }


  if (left == true)
  {
    al1.display(test);
    al1.work(test);
    al2.work(test);
    al2.display(test);
  }

  if (running == true && right == true)
  {
    run_r.display(test);
  }
  if (running == true && left == true)
  {
    run_l.display(test);
  }


  if (right == true)
  {
    if (keyPressed) 
    {
      if ((BlackBox.isKeyDown(BlackBox.VK_S)) && spunch==false) 
      {
        spunch=true; 
        //    reflex=true;
        a1.oldxDist=a1.xDist;
        a1.oldyDist=a1.yDist;
        //    a2.oldxDist=a2.xDist;
        attack = true;
      }
      //      else
      //      {
      //        attack = false;
      //      }
      if ((BlackBox.isKeyDown(BlackBox.VK_W)) && upunch==false) 
      {
        upunch=true; 
        a2.oldxDist=a2.xDist;
        a2.oldyDist=a2.yDist;
        attack = true;
      }
      //      else
      //      {
      //        attack = false;
      //      }
    }

    if (spunch== true) {
      a1.straightPunch(test);
    }

    if (upunch== true) {
      a2.upperCut(test);
    }
  }

  if (left == true)
  {
    if (keyPressed) 
    {
      if ((BlackBox.isKeyDown(BlackBox.VK_S)) && spunch==false) 
      {
        spunch = true;
        //    reflex=true;
        al1.oldxDist=al1.xDist;
        al1.oldyDist=al1.yDist;
        attack = true;

        //    a2.oldxDist=a2.xDist;
      }
      //      else
      //      {
      //        attack = false;
      //      }

      if ((BlackBox.isKeyDown(BlackBox.VK_W)) && upunch==false) 
      {
        upunch=true; 
        al2.oldxDist=al2.xDist;
        al2.oldyDist=al2.yDist;
        attack = true;
      }
      //      else
      //      {
      //        attack = false;
      //      }
    }

    if (spunch== true) {
      println("PUNCH");
      al1.straightPunch(test);
      //      al2.straightPunch(test);
    }

    if (upunch== true) {
      al2.upperCut(test);
    }
  }

  //  run.move();
  //  run.constraints();
}

void jump(Person t)
{
  //  if (keyPressed)
  //  {
  //    if (key == CODED)
  //    {
  //      if (keyCode == UP)
  //      {
  //        jump = true;
  //      }
  //    }
  //  }
  if (jump == true)
  {
    t.loc.y -= jumpSpeed;
    jumpSpeed -= .7;
    //    if (t.loc.y < height - 600)
    //    {
    //     t.test = loadImage("ruby_attack.gif"); 
    //    }
    //    else
    //    {
    //     t.test = loadImage("test.gif"); 
    //    }
    if (t.loc.y > height - 600)
    {
      t.loc.y = height - 600;
      jump = false;
      println(jump);
    }
    //    if (t.loc.y == height - 600)
    //    {
    //     jump = false; 
    //    }
  }
}

void data()
{
  text("Left = " + left, 100, 10);
  text("Right = " + right, 100, 20);
  text("Up = " + up, 100, 30);
  text("Movement = " + movement, 100, 40);
  text("Running = " + running, 100, 50);
  text("Attack = " + attack, 100, 60);
  text("Jump = " + jump, 100, 70);
  text("Spunch = " + spunch, 100, 80);
  text("Upunch = " + upunch, 100, 90);
}

