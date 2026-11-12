class nervous {
  void setup(float x, float y, float size) {

   
    circle(x, y, size/4);
    noFill();
    arc(x,y,size*0.8,size*1,HALF_PI+0.5,PI+HALF_PI-0.5);
    arc(x,y,size*0.8,size*1,PI+HALF_PI+0.5, TWO_PI);
    arc(x,y,size*0.8,size*1,PI+HALF_PI+0.5, TWO_PI);
  }
}
