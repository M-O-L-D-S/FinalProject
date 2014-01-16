Person test;
Running run_r, run_l;
Timer T1 = new Timer();

PImage testback;

float jumpSpeed = 5;
boolean jump = false;

boolean movement = false;
boolean running = false;
boolean attack = false;
boolean walk = false;
boolean right = false;
boolean left = false;

int time1 = 0;
int time2 = 0;
int time3 = 0;

void setup()
{
  frameRate(30);
  size(displayWidth, displayHeight); 
  test = new Person();
  testback = loadImage("testback.jpg");
  run_r = new Running("Rwby_r", 18);
  run_l = new Running("Rwby_l", 18);
}

void draw()
{
  testback.resize(displayWidth, displayHeight);
  background(testback);
  test.display();
  test.move();
  test.constraints();
  jump(test);
  if (running == true && right == true)
  {
    run_r.display(test);
  }
  if (running == true && left == true)
  {
    run_l.display(test);
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
    jumpSpeed -= .1;
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

