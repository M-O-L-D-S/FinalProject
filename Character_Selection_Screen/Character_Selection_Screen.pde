Sel s1;
int song;

//music
import ddf.minim.*;
Minim minim;
AudioPlayer music1, music2, music3;

void setup () {
  size (displayWidth, displayHeight);
  s1 = new Sel ();
  song = int (random(1, 3));

  //music
  minim = new Minim(this);
  music1 = minim.loadFile("Song1.mp3");
  music2 = minim.loadFile("Song2.mp3");
  music3 = minim.loadFile("Song3.mp3");


  if (song == 1) {
    music1.play();
  }

  if (song == 2) {
    music2.play();
  }

  if (song == 3) {
    music3.play();
  }
}

void draw () {
  background (0);
  s1.show ();
}

