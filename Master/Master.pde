//Create person and arms
//Create variables that control person and arms 
//Create UI screens
//Create variables to control UI, selection screen, and other game elements

Person test;

Arm a1, a2;
Arm_Left al1, al2;

Ruby r1;
Weiss w1;
Blake b1;
Yang y1;
Vbar v1;
Pbar p1;
Over o1;
Won wn1;
Timer T1 = new Timer();

Boolean StartScreen;
Boolean Play;
Boolean HowToPlay;
Boolean Settings;
Boolean Credits;
Boolean LiamBoolean;
PImage Liam;
PImage logo;
PImage R, W, B, Y;
float HalfTheBoxWidth;
float HalfTheBoxHeight;
float song;
PFont Font;

boolean ruby=false;
boolean weiss=false;
boolean blake=false;
boolean yang=false;

boolean win = false;
boolean lose = false;

boolean spunch=false;
boolean upunch=false;
boolean reflex=false;
Running run_r, run_l;
boolean en_hit = false;
boolean pl_hit = false;
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
int rand = int(random(1, 2));
Sel s1;

//Import and set up music
import ddf.minim.*;
Minim minim;
AudioPlayer music1, music2, music3, music4, music5, music6, music7, music8, music9, music10;

//Initialize Blackbox
//Set framerate
//Set Size
//Load images
//Load classes
//Set strokeWeight
//Load music

void setup() {
  BlackBox.init(this);
  frameRate(24);
  s1 = new Sel ();
  size(displayWidth, displayHeight);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  StartScreen = true;
  song = int(random(1, 10));
  logo = loadImage("logo.jpg");
  Liam = loadImage("Liam.jpg");
  R = loadImage ("Ruby.png");
  W = loadImage ("Weiss.png");
  B = loadImage ("Blake.png");
  Y = loadImage ("Yang.png");
  Play = false;
  HowToPlay = false;
  Settings = false;
  Credits = false;
  LiamBoolean = false;
  HalfTheBoxWidth = width/6;
  HalfTheBoxHeight = height/40;
  Font = loadFont ("Font.vlw");
  textFont (Font, 50);
  //music
  minim = new Minim(this);
  music1 = minim.loadFile("Song1(TWBTD).mp3");
  music2 = minim.loadFile("Song2(IBurn).mp3");
  music3 = minim.loadFile("Song3.mp3");
  music4 = minim.loadFile("Song4.mp3");
  music5 = minim.loadFile("Song5.mp3");
  music6 = minim.loadFile("Song6.mp3");
  music7 = minim.loadFile("Song7.mp3");
  music8 = minim.loadFile("Song8.mp3");
  music9 = minim.loadFile("Song9.mp3");
  music10 = minim.loadFile("Song10.mp3");
  if (song == 1) {
    music1.play();
  }

  if (song == 2) {
    music2.play();
  }

  if (song == 3) {
    music3.play();
  }

  if (song == 4) {
    music4.play();
  }

  if (song == 5) {
    music5.play();
  }

  if (song == 6) {
    music6.play();
  }

  if (song == 7) {
    music7.play();
  }

  if (song == 8) {
    music8.play();
  }

  if (song == 9) {
    music9.play();
  }

  if (song == 10) {
    music10.play();
  }
  strokeWeight(6);

  test = new Person();
  testback = loadImage("testback.jpg");
  run_r = new Running("Rwby_r", 18);
  run_l = new Running("Rwby_l", 18);
  a1=new Arm(test);
  a2=new Arm(test);
  al1 = new Arm_Left(test);
  al2 = new Arm_Left(test);
  r1 = new Ruby ();
  w1 = new Weiss ();
  b1 = new Blake ();
  y1 = new Yang ();
  v1 = new Vbar ();
  p1 = new Pbar ();
  o1 = new Over ();
  wn1 = new Won ();
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
//Controls all UI elements in main menu
//Sets parameters under which rest of game is displayed

void draw() {
  T1.time();
  if (StartScreen == true && Play == false && HowToPlay == false && Settings == false && Credits == false) {
    println(mouseY);
    if (LiamBoolean == true) {
      image(Liam, width/2, height/2, displayWidth, displayHeight);
    }
    else if (LiamBoolean == false) {
      background(0);
    }
    image (R, width/9, height/9);
    image (W, 8*width/9, 9*height/11, W.width/2, W.height/2);
    image (B, 8*width/9, height/6, B.width/3, B.height/3);
    image (Y, width/9, 9*height/11, Y.width/2, Y.height/2);
    rectangle(width/2, height/2+height/10);
    rectangle(width/2, height/2+(height/10*2));
    rectangle(width/2, height/2+(height/10*3));
    rectangle(width/2, height/2+(height/10*4));
    textSize(190);
    fill(139, 7, 7);
    text("RWBY: The Game", width/2, height/2-20);
    options("Play", width/2, height/2+(height/10+9));
    options("How To Play", width/2, height/2+(height/10*2+9));
    options("Settings", width/2, height/2+(height/10*3+9));
    options("Credits", width/2, height/2+(height/10*4+9));
  }
  //play
  else if (StartScreen == false && Play == true) {
    if (LiamBoolean == true) {
      image(Liam, width/2, height/2, displayWidth, displayHeight);
    }
    else if (LiamBoolean == false) {
      background(0);
    }
    rectangle(width/2, height-height/16);
    options("Back", width/2, height - (height/16)+9);
    s1.show (T1);
  }
  //howtoplay
  else if (StartScreen == false && HowToPlay == true) {
    if (LiamBoolean == true) {
      image(Liam, width/2, height/2, displayWidth, displayHeight);
    }
    else if (LiamBoolean == false) {
      background(0);
    }
    
    fill(255);
    textAlign(CENTER);
    textSize(45);
    text ("Jump: Up arrow", width/2, height/6);
    text ("Left: Left Arrow", width/2, 2*height/6);
    text ("Right: Right Arrow", width/2, 3*height/6);
    text ("Punch: S or W Keys", width/2, 4*height/6);
    text ("Win by draining your enemy's health bar.", width/2, 5*height/6);
    rectangle(width/2, height-height/16);
    options("Back", width/2, height - (height/16)+9);
  }
  //Settings
  else if (StartScreen == false && Settings == true) {
    if (LiamBoolean == true) {
      image(Liam, width/2, height/2, displayWidth, displayHeight);
    }
    else if (LiamBoolean == false) {
      background(0);
    }
    rectangle(width/2, height-height/16);
    rectangle(width/2, height/2);
    LiamText(width/2, height/2 + 9);
    options("Back", width/2, height - (height/16)+9);
  }
  //credits
  else if (StartScreen == false && Credits == true) {
    if (LiamBoolean == true) {
      image(Liam, width/2, height/2, displayWidth, displayHeight);
    }
    else if (LiamBoolean == false) {
      background(0);
    }
    fill(209, 219, 244);
    textSize(80);
    text("Credits", width/2, height/7);
    textSize(50);
    fill(139, 7, 7);
    text("Project Manager: Matt Mastropasqua", width/2, height/7*2);
    text("Programmer/''Code Monkey'': Danny Wilkins", width/2, height/7*3);
    text("User Interface: Steven Skubish", width/2, height/7*4);
    text("Graphics/Design: Laura Vogel", width/2, height/7*5);
    text("QA/Playtesting: Orian Sneor", width/2, height/7*6);
    rectangle(width/2, height-height/16);
    options("Back", width/2, height - (height/16)+9);
  }

  if (lose == true)
  {
    o1.show();
  }

  if (win == true)
  {
    wn1.show();
  }

  if (ruby == true)
  {
    r1.show();
    r1.move(test, T1);
    test.display();
    test.move();
    test.constraints();
    jump(test);
    v1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    p1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    noCursor();
  }



  if (weiss == true)
  {
    w1.show();
    w1.move(test, T1);
    test.display();
    test.move();
    test.constraints();
    jump(test);
    v1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    p1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    noCursor();
  }

  if (blake == true)
  {
    b1.show();
    b1.move(test, T1);
    test.display();
    test.move();
    test.constraints();
    jump(test);
    v1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    p1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    noCursor();
  }

  if (yang == true)
  {
    y1.show();
    y1.move(test, T1);
    test.display();
    test.move();
    test.constraints();
    jump(test);
    v1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    p1.setGradient(test, r1, w1, b1, y1);
    stroke(0);
    noCursor();
  }

  if (right == true)
  {
    fill(0);
    a1.display(test);
    a1.work(test);
    a2.work(test);
    a2.display(test);
  }


  if (left == true)
  {
    fill(0);
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
        a1.oldxDist=a1.xDist;
        a1.oldyDist=a1.yDist;
        attack = true;
      }

      if ((BlackBox.isKeyDown(BlackBox.VK_W)) && upunch==false) 
      {
        upunch=true; 
        a2.oldxDist=a2.xDist;
        a2.oldyDist=a2.yDist;
        attack = true;
      }
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
        al1.oldxDist=al1.xDist;
        al1.oldyDist=al1.yDist;
        attack = true;
      }

      if ((BlackBox.isKeyDown(BlackBox.VK_W)) && upunch==false) 
      {
        upunch=true; 
        al2.oldxDist=al2.xDist;
        al2.oldyDist=al2.yDist;
        attack = true;
      }
    }

    if (spunch== true) {
      println("PUNCH");
      al1.straightPunch(test);
    }

    if (upunch== true) {
      al2.upperCut(test);
    }
  }
}

void rectangle(float x, float y) {
  if (mouseX >= width/2 - HalfTheBoxWidth && mouseX <= width/2 + HalfTheBoxWidth && mouseY >= y - HalfTheBoxHeight && mouseY <= y + HalfTheBoxHeight) {
    //yang yellow
    stroke(238, 221, 68);
    strokeWeight(7);
  }
  else {
    //silver
    stroke(209, 219, 244);
    strokeWeight(5);
  }
  //play select
  if (mousePressed && StartScreen == true && mouseX >= x - HalfTheBoxWidth && mouseX <= x + HalfTheBoxWidth && mouseY >= (height/2+(height/10)) - HalfTheBoxHeight && mouseY <= (height/2+(height/10)) + HalfTheBoxHeight) {
    StartScreen = false;
    Play = true;
  }
  //how to play selection
  if (mousePressed && mouseX >= width/2 - HalfTheBoxWidth && mouseX <= width/2 + HalfTheBoxWidth && mouseY >= height/2+(height/10*2) - HalfTheBoxHeight && mouseY <= height/2+(height/10*2) + HalfTheBoxHeight) {
    StartScreen = false;
    HowToPlay = true;
  }
  //settings select
  if (mousePressed && mouseX >= width/2 - HalfTheBoxWidth && mouseX <= width/2 + HalfTheBoxWidth && mouseY >= height/2+(height/10*3) - HalfTheBoxHeight && mouseY <= height/2+(height/10*3) + HalfTheBoxHeight) {
    StartScreen = false;
    Settings = true;
  }
  //credits select
  if (mousePressed && mouseX >= width/2 - HalfTheBoxWidth && mouseX <= width/2 + HalfTheBoxWidth && mouseY >= height/2+(height/10*4) - HalfTheBoxHeight && mouseY <= height/2+(height/10*4) + HalfTheBoxHeight) {
    StartScreen = false;
    Credits = true;
  }
  //back button
  if (mousePressed && mouseX >= width/2 - HalfTheBoxWidth && mouseX <= width/2 + HalfTheBoxWidth && mouseY >= height - (height/16) - HalfTheBoxHeight && mouseY <= height - (height/16) + HalfTheBoxHeight) {
    StartScreen = true;
    Play = false;
    HowToPlay = false;
    Settings = false;
    Credits = false;
  }
  //red
  fill(139, 7, 7);
  rect(x, y, width/3, height/20);
}
//text and hightlighting
void options(String t, float x, float y) {
  if (mouseX >= x - HalfTheBoxWidth && mouseX <= x + HalfTheBoxWidth && mouseY >= y - HalfTheBoxHeight-9 && mouseY <= y + HalfTheBoxHeight-9) {
    fill(238, 221, 68);
  }
  else {
    fill(0);
  }
  textSize(30);
  text(t, x, y);
}
void LiamText(float x, float y) {
  fill(0);
  if (LiamBoolean == true) {
    text("Liam!", x, y);
  }
  else if (LiamBoolean == false) {
    text("Liam?", x, y);
  }
}
void mousePressed() {
  if (mousePressed && Settings == true && mouseX >= width/2 - HalfTheBoxWidth && mouseX <= width/2 + HalfTheBoxWidth && mouseY >= height/2 - HalfTheBoxHeight && mouseY <= height/2 + HalfTheBoxHeight) {
    LiamBoolean = !LiamBoolean;
  }
}

void jump(Person t)
{
  if (jump == true)
  {
    t.loc.y -= jumpSpeed;
    jumpSpeed -= .4;

    if (t.loc.y > height - 600)
    {
      t.loc.y = height - 600;
      jump = false;
      println(jump);
    }
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

