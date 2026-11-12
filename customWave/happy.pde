class happy {
  void setup(float x, float y, float size) {

    circle(x,y,size/3);
    line(x,y-5,x,y-10);
    line(x+3,y-3,x+6,y-6);
    line(x-3,y+3,x-6,y+6);
    line(x-3,y-3,x-6,y-6);
    line(x+3,y+3,x+6,y+6);
  }
}
