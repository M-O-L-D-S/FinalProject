int handX, handY, VillainX, VillainY;
int playerhealth, villainhealth, move;

void setup () {
  size (displayWidth, displayHeight);
  VillainX = 750;
  VillainY = 400;
  playerhealth = 50;
  villainhealth = 50;
}

void draw () {
  background (0);
  
  move = int (random (1, 6));
  handX = mouseX;
  handY = mouseY;
  
  
  textSize (50);
  textAlign (CENTER);
  text (playerhealth, width/3, height/10);
  text (villainhealth, 2*width/3, height/10);
  
  rectMode (CENTER);
  rect (VillainX, VillainY, 250, 250);

  if (dist(handX, handY, VillainX, VillainY) < 250/2) {

    if (move >= 1 && move < 3) {
      
      playerhealth -= 1;
    }

    if (move <= 6 && move >= 3) {
      VillainX += 5;
      villainhealth -= 1;
    }
  }
  println(dist(handX, handY, VillainX, VillainY));
}

