class calm {
  void setup(float x, float y, float size) {
    
    
    
    
    arc(x-5,y,size/3,size/3,HALF_PI,PI + HALF_PI);
    arc(x,y-3,size/3,size/3,PI,TWO_PI);
    
    arc(x+5,y,size/3,size/3,PI + HALF_PI, TWO_PI);
    arc(x+5,y,size/3,size/3,0, HALF_PI);
  }
}
