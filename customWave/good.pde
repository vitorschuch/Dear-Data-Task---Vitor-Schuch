class good {
  void setup(float x, float y, float size) {

    circle(x, y, size);
    line(x-5,y,x+5,y);
    line(x,y+5,x,y-5);
  }
}
