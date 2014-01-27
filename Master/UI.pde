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
Sel s1;
import ddf.minim.*;
Minim minim;
AudioPlayer music1, music2, music3;
void setup() {
  s1 = new Sel ();
  size(displayWidth, displayHeight);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  StartScreen = true;
  song = random(1,3.9999999);
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
  if (song >= 1 && song <= 1.9999999) {
    music1.play();
  }

  if (song >= 2 && song <= 2.9999999) {
    music2.play();
  }

  if (song >= 3 && song <= 3.9999999) {
    music3.play();
  }
}

void draw() {
  println(song);
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
    image(logo, width/2, height/3);
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
    s1.show ();
  }
  //howtoplay
  else if (StartScreen == false && HowToPlay == true) {
    if (LiamBoolean == true) {
      image(Liam, width/2, height/2, displayWidth, displayHeight);
    }
    else if (LiamBoolean == false) {
      background(0);
    }
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
    textSize(30);
    fill(139, 7, 7);
    text("Project Manager: Matt Mastropasqua", width/2, height/7*2);
    text("Programmer/''Code Monkey'': Danny Wilkins", width/2, height/7*3);
    text("User Interface: Steven Skubish", width/2, height/7*4);
    text("Graphics/Design: Laura Vogel", width/2, height/7*5);
    text("QA/Playtesting: Orian Sneor", width/2, height/7*6);
    rectangle(width/2, height-height/16);
    options("Back", width/2, height - (height/16)+9);
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

