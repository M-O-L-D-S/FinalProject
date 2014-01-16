Boolean StartScreen;
Boolean Play;
Boolean HowToPlay;
Boolean Settings;
Boolean Credits;
Boolean LiamBoolean;
PImage Liam;
PImage logo;
float HalfTheBoxWidth;
float HalfTheBoxHeight;
Sel s1;
import ddf.minim.*;
Minim minim;
AudioPlayer music;
void setup() {
  s1 = new Sel ();
  size(displayWidth, displayHeight);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  StartScreen = true;
  logo = loadImage("logo.jpg");
  Liam = loadImage("Liam.jpg");
  Play = false;
  HowToPlay = false;
  Settings = false;
  Credits = false;
  LiamBoolean = false;
  HalfTheBoxWidth = width/6;
  HalfTheBoxHeight = height/40;
  //music
  minim = new Minim(this);
  music = minim.loadFile("Song.mp3");
}

void draw() {
  if (StartScreen == true && Play == false && HowToPlay == false && Settings == false && Credits == false) {
        println(mouseY);
    if (LiamBoolean == true) {
      image(Liam, width/2, height/2, displayWidth, displayHeight);
    }
    else if (LiamBoolean == false) {
      background(0);
    }
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
    //music
    music.play();
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
  if (mousePressed && mouseX >= x - HalfTheBoxWidth && mouseX <= x + HalfTheBoxWidth && mouseY >= (height/2+(height/10)) - HalfTheBoxHeight && mouseY <= (height/2+(height/10)) + HalfTheBoxHeight) {
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
  if (mousePressed && mouseX >= width/2 - HalfTheBoxWidth && mouseX <= width/2 + HalfTheBoxWidth && mouseY >= height/2+(height/10*4) - HalfTheBoxHeight && mouseY <= height/2+(height/10*3) + HalfTheBoxHeight) {
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

