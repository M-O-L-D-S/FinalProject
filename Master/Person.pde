class Person
{
  PVector loc = new PVector(0, height);
  PVector vel = new PVector(0, 0);
  PVector acc = new PVector(0, 0);



  Running run;

  PImage test_l, test_r, test_r_jump;


  Person()
  {
    test_l = loadImage("test_l.png");
    test_r = loadImage("test_r.png");
    run = new Running("Rwby_r", 18);
  }

  void display()
  {
    
    if (movement == false)
    {
      if (left == false && right == false)
      {
        imageMode(CORNER);
        image(test_r, loc.x, loc.y+150);
      }

      if (left == true)
      {
        imageMode(CORNER);
        image(test_l, loc.x, loc.y+150);
      }

      if (right == true)
      {
        imageMode(CORNER);
        image(test_r, loc.x, loc.y+150);
      }

      //      if (up == true)
      //      {
      //        image(test_r_jump, loc.x, loc.y + 150);
      //      }
    }
  }

  void move()
  {

    if (keyPressed)
    {
      
      if ( BlackBox.isKeyDown(BlackBox.VK_F))
      {
        attack = true;
      }
      else
      {
        attack = false;
      }


      if (key == CODED)
      {
        if (jump == false)
        {
          if (BlackBox.isKeyDown(BlackBox.VK_RIGHT) && BlackBox.isKeyDown(BlackBox.VK_UP))
          {
            vel.x = 8;
            loc.add(vel);
            running = true;
            movement = true;
            right = true;
            jump = true;
            jumpSpeed = 15;
            up = true;
          }
          else
          {
            up = false;
          }
        }
        if (BlackBox.isKeyDown(BlackBox.VK_RIGHT))
        {
          vel.x = 8;
          loc.add(vel);
          running = true;
          movement = true;
          left = false;
          right = true;
        }
//        else
//        {
//          right = false;
//        }
      }

      if (jump == false)
      {
        if (BlackBox.isKeyDown(BlackBox.VK_LEFT) && BlackBox.isKeyDown(BlackBox.VK_UP))
        {
          vel.x = 8;
          loc.sub(vel);
          running = true;
          movement = true;
          left = true;
          jump = true;
          jumpSpeed = 15;
          up = true;
        }
        else
        {
          up = false;
        }
      }
      if (BlackBox.isKeyDown(BlackBox.VK_LEFT))
      {
        vel.x = 8;
        loc.sub(vel);
        running = true;
        movement = true;
        right = false;
        left = true;
      }
//      else
//      {
//        left = false;
//      }
      //        else
      //        {
      //          movement = false;
      //        }
      if (jump == false)
      {
        if (BlackBox.isKeyDown(BlackBox.VK_UP))
        {
          jump = true;
          jumpSpeed = 15;
          //          loc.y -= jumpSpeed;
          //          jumpSpeed -= .1;
          //          if (loc.y >= height - 600)
          //          {
          //            loc.y = height - 600;
          //            jump = false;
          //          }
          running = false;
          up = true;
          //          movement = true;
        }
        else
        {
          up = false;
        }
      }
      //        else
      //        {
      //          movement = false;
      //        }
    }
    else
    {
      running = false;
      movement = false;
    }
//    text(vel.y, 20, 50);
//    text(acc.y, 20, 70);
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

