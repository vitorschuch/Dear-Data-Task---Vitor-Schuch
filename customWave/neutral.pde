class neutral {
  void setup(float x, float y, float size) {

    circle(x,y,size);
    arc(x-2,y,size/4,size/3,PI,TWO_PI);
    arc(x+3,y,size/4,size/3,0,PI);
  }
}
