class Timer
{

  Timer()
  {
  }

  int time1 = 0;
  int time2 = 0;
  int time3 = 0;

  void time()
  {
    //    background(255);
    time1 = millis();
    //    textAlign(CENTER);
    //    fill(0);
    //    text(millis()/1000.0, 30, height-10);

    time3 = time1 - time2;
    if (time3 >= 2000)
    {
      time2 = time1;
      println(millis()/2000.0);
    }
  }
}

