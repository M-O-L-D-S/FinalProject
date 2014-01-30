class Weiss {
  PImage bk, vl;
  int VillainX, VillainY;
  PVector vloc = new PVector(4*width/5, 2*height/6);
  PVector vvel = new PVector(15, -10);
  int mov1, mov2, mov3;

  int time1 = 0;
  int time2 = 0;
  int time3 = 0;

  Weiss () {
    bk = loadImage ("Weiss.png");
    vl = loadImage ("Nevermore.png");
    VillainX = 4*width/5;
    VillainY = 2*height/6;
  }

  void show () {
    imageMode (CORNER);
    image (bk, 0, 0, displayWidth, displayHeight);
    imageMode (CENTER);
    image (vl, vloc.x, vloc.y);
  }

  void move(Person t, Timer ti)
  {
    mov1 = int(random(1, 400));

    if (ti.time3 >= 1500)
    {
      ti.time2 = ti.time1;
      println(millis()/2000.0);

      if (mov1 >= 1 && mov1 <= 100)
      {
        vvel.x+=10;
      }

      if (mov1 >= 101 && mov1 <= 200)
      {
        vvel.y+=10;
      }

      if (mov1 >= 201 && mov1 <= 300)
      {
        vvel.y = -vvel.y;
      }

      if (mov1 >= 401 && mov1 <= 400)
      {
        vvel.x = -vvel.x;
      }
    }

    if (ti.time3 >= 1500)
    {
      ti.time2 = ti.time1;
      println(millis()/2000.0);

      if (mov2 >= 1 && mov2 <= 100)
      {
        vvel.x-=10;
      }

      if (mov2 >= 101 && mov2 <= 200)
      {
        vvel.y-=10;
      }

      if (mov2 >= 201 && mov2 <= 300)
      {
        vvel.y = -vvel.y;
      }

      if (mov2 >= 401 && mov2 <= 400)
      {
        vvel.x = -vvel.x;
      }
    }


    if (vloc.y >= height - 300)
    {
      vvel.y = -vvel.y;
    }
    if (vloc.y <= 0)
    {
      vvel.y = -vvel.y;
    }
    if (vloc.x <= 0)
    {
      vvel.x = -vvel.x;
    }

    if (vloc.x >= width)
    {
      vvel.x = -vvel.x;
    }

    //    if (vloc.x >= t.loc.x)
    //    {
    vloc.sub(vvel);
    //    }
    //
    //    if (vloc.x <= t.loc.x)
    //    {
    //      vloc.add(vvel);
    //    }
  }
}

