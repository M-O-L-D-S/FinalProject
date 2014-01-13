Boolean StartScreen;
Boolean Play;
Boolean HowToPlay;
Boolean Settings;
Boolean Credits;
PImage logo;
void setup() {
  size(displayWidth, displayHeight);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(30);
  StartScreen = true;
  logo = loadImage("logo.jpg");
  Play = false;
  HowToPlay = false;
  Settings = false;
  Credits = false;
}

void draw() {
  if (StartScreen == true && Play == false && HowToPlay == false && Settings == false && Credits == false) {
    background(10);
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
    background(0);
  }
  //credits
  else if (StartScreen == false && Credits == true) {
    background(0);
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
    
    fill(0);
    text("Back", width/2, height - (height/16)+9);
  }
}

void rectangle(float x, float y) {
  if (mouseX >= width/2 - width/6 && mouseX <= width/2 + width/6 && mouseY >= y - height/40 && mouseY <= y + height/40) {
    //yang yellow
    stroke(238, 221, 68);
    strokeWeight(7);
  }
  else {
    //silver
    stroke(209, 219, 244);
    strokeWeight(5);
  }
  //red
  fill(139, 7, 7);
  rect(x, y, width/3, height/20);
}

void options(String t, float x, float y) {
  if (mouseX >= x - width/6 && mouseX <= x + width/6 && mouseY >= y - height/40-9 && mouseY <= y + height/40-9) {
    fill(238, 221, 68);
    //play select
    if (mousePressed && mouseX >= x - width/6 && mouseX <= x + width/6 && mouseY >= (height/2+(height/10+9)) - height/40-9 && mouseY <= (height/2+(height/10+9)) + height/40-9) {
      StartScreen = false;
      Play = true;
    }
    //how to play selection
    if (mousePressed && mouseX >= width/2 - width/6 && mouseX <= width/2 + width/6 && mouseY >= height/2+(height/10*2+9) - height/40-9 && mouseY <= height/2+(height/10*2+9) + height/40-9) {
      StartScreen = false;
      HowToPlay = true;
    }
    //settings select
    if (mousePressed && mouseX >= width/2 - width/6 && mouseX <= width/2 + width/6 && mouseY >= height/2+(height/10*3+9) - height/40-9 && mouseY <= height/2+(height/10*3+9) + height/40-9) {
      StartScreen = false;
      Settings = true;
    }
    //credits select
    if (mousePressed && mouseX >= width/2 - width/6 && mouseX <= width/2 + width/6 && mouseY >= height/2+(height/10*4+9) - height/40-9 && mouseY <= height/2+(height/10*4+9) + height/40-9) {
      StartScreen = false;
      Credits = true;
    }
  }
  else {
    fill(0);
  }
  text(t, x, y);
}

