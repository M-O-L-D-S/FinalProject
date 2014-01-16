class Running
{
  PImage[] run;
  int imageCount;
  int frame;
  PVector pos = new PVector(0, 0);

  PVector loc = new PVector(0, height - 600);
  PVector vel = new PVector(0, 0);
  PVector acc = new PVector(0, 0);



  Running(String imagePrefix, int count)
  {
    imageCount = count;
    run = new PImage[imageCount]; 

    for (int i = 0; i < imageCount; i++)
    {
      String filename = imagePrefix + nf(i, 3) + ".png";
      run[i] = loadImage(filename);
    }
  }

  void display(Person t)
  {
    frame = (frame + 1) % imageCount;
    if (running == true)
    {
      image(run[frame], t.loc.x, t.loc.y + 150);
    }
  }

  int getWidth()
  {
    return run[0].width;
  }

  //  void move()
  //  {
  //
  //    if (keyPressed)
  //    {
  //
  //      if (key == 'd' || key =='D')
  //      {
  //        vel.x = 8;
  //        loc.add(vel);
  //      }
  //
  //
  //      if (key == CODED)
  //      {
  //        if (keyCode == RIGHT)
  //        {
  //          vel.x = 8;
  //          loc.add(vel);
  //        }
  //
  //        if (keyCode == LEFT)
  //        {
  //          vel.x = 8;
  //          loc.sub(vel);
  //        }
  //
  //        if (keyCode == UP)
  //        {
  //          jump = true;
  //          jumpSpeed = 5;
  //          loc.y -= jumpSpeed;
  //          jumpSpeed -= .1;
  //          if (loc.y >= height - 600)
  //          {
  //            loc.y = height - 600;
  //            jump = false;
  //          }
  //        }
  //      }
  //    }
  //    text(vel.y, 20, 50);
  //    text(acc.y, 20, 70);
  //  }
  //
  //  void constraints()
  //  {
  //    if (loc.y >= height - 600)
  //    {
  //      loc.y = height - 600;
  //    }
  //    if (vel.y >= 70)
  //    {
  //      vel.y = 70;
  //    }
  //  }
}

