class tired {
  int increment = -6;
  void setup(float x, float y, float size) {

    for(int i = 0; i<3; i++) {
    arc(x , y + increment, size/3,size/3, 0 , PI);
    increment = increment+6;
    
    }
    increment = -6;
  }
}
