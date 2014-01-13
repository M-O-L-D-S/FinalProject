Sel s1;


//music
import ddf.minim.*;
Minim minim;
AudioPlayer music;

void setup () {
  size (displayWidth, displayHeight);
  s1 = new Sel ();

  //music
  minim = new Minim(this);
  music = minim.loadFile("Song.mp3");
  music.play();
}

void draw () {
  background (0);
  s1.show ();
}

