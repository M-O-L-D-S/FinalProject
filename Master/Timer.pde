class Timer
{

  Timer()
  {
  }

  int time1 = 0;
  int time2 = 0;
  int time3 = 0;

  //A timer used for randomizing enemy movements

  void time()
  {
    time1 = millis();
    time3 = time1 - time2;
    if (time3 >= 2000)
    {
      time2 = time1;
      println(millis()/2000.0);
    }
  }
}

