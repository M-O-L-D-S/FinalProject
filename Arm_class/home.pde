Arm a1;

void setup(){
  size (600,600);
  a1=new Arm();
}

void draw(){
    float[] c = a1.c.array();
    println("x: " + c[0] + " y: " + c[1]);
    a1.work();
    a1.display();

}
