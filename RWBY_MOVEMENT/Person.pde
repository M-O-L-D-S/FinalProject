class Person
{
  PVector loc = new PVector(0, height - 600);
  PVector vel = new PVector(0, 0);
  PVector acc = new PVector(0, 0);



  Running run;

  PImage test;


  Person()
  {
    test = loadImage("test.gif");
    run = new Running("Rwby_r", 18);
  }

  void display()
  {
    if (movement == false)
    {
      image(test, loc.x, loc.y);
    }
  }

  void move()
  {

    if (keyPressed)
    {

      //       if (key == 'd' || key =='D')
      //        {
      //          vel.x = 8;
      //          loc.add(vel);
      //        }


      if (key == CODED)
      {
        if (keyCode == RIGHT)
        {
          vel.x = 8;
          loc.add(vel);
          running = true;
          movement = true;
          right = true;
        }
        else
        {
         right = false; 
        }

        if (keyCode == LEFT)
        {
          vel.x = 8;
          loc.sub(vel);
          running = true;
          movement = true;
          left = true;
        }
        else
        {
         left = false; 
        }
        //        else
        //        {
        //          movement = false;
        //        }

        if (keyCode == UP)
        {
          jump = true;
          jumpSpeed = 5;
          //          loc.y -= jumpSpeed;
          //          jumpSpeed -= .1;
          //          if (loc.y >= height - 600)
          //          {
          //            loc.y = height - 600;
          //            jump = false;
          //          }
          running = true;
          movement = true;
        }
        //        else
        //        {
        //          movement = false;
        //        }
      }
    }
    else
    {
      running = false;
      movement = false;
    }
    text(vel.y, 20, 50);
    text(acc.y, 20, 70);
  }

  void constraints()
  {
    if (loc.y >= height - 600)
    {
      loc.y = height - 600;
    }
    //    if (vel.y >= 70)
    //    {
    //      vel.y = 70;
    //    }
  }
}

