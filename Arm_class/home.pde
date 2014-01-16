Arm a1, a2;
boolean spunch=false;
boolean upunch=false;
void setup() {
  size (600, 600);
  a1=new Arm();
  a2=new Arm();
  strokeWeight(6);
}

void draw() {
  background(245);  
  float[] c = a1.c.array();
  println("x: " + c[0] + " y: " + c[1]);
  a1.work();
  a1.display();
  a2.work();
  a2.display();

  if (keyPressed) {
    if (key == 'w' || key == 'W'&& spunch==false){
    spunch=true; 
    a1.oldxDist=a1.xDist;
    }
   if(key=='s'|| key=='S' && upunch==false){
     upunch=true; 
    a2.oldxDist=a2.xDist;
   }
  }
  


  if (spunch== true) {
    a1.straightPunch();
  }

  if (upunch== true) {
    a2.upperCut();
  }
}

//void mousePressed() {
//  if (spunch==false) {
//    spunch=true; 
//    a1.oldxDist=a1.xDist;
//  }
//}

//void keyPressed() {
//  if (upunch==false) {
//    upunch=true; 
//    a2.oldxDist=a2.xDist;
//  }
//}

