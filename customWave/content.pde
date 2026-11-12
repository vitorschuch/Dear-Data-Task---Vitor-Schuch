class content {
  void setup(float x, float y, float size) {

    
    arc(x, y, size , size,0,PI,CHORD);
    arc(x-5, y-2, size/2 , size/2,PI,TWO_PI - 0.5);
    arc(x+5, y-2, size/2 , size/2,PI + 0.5,TWO_PI);
  }
}
