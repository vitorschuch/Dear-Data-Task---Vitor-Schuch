class impatient {
  void setup(float x, float y, float size) {

    arc(x,y+2,size*0.6,size*0.7,0,PI+0.5);
    arc(x,y+2,size*0.6,size*0.7,TWO_PI-0.5,TWO_PI);
    line(x-6,y-2,x-0.5,y-10);
    line(x,y-10,x+4.5,y-4);
  }
}
