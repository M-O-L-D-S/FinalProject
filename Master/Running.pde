class Running
{

  //Declares image array that displays running person
  //Creates PVectors that control location, velocity, and acceleration


  PImage[] run;
  int imageCount;
  int frame;
  PVector pos = new PVector(0, 0);

  PVector loc = new PVector(0, height - 600);
  PVector vel = new PVector(0, 0);
  PVector acc = new PVector(0, 0);

  //More stuff about image arrays


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
  
  //Allows array to move through images

  void display(Person t)
  {
    frame = (frame + 1) % imageCount;
    if (running == true)
    {
      imageMode(CORNER);
      image(run[frame], t.loc.x, t.loc.y + 150);
    }
  }
  
  //Necessary for array

  int getWidth()
  {
    return run[0].width;
  }
}

