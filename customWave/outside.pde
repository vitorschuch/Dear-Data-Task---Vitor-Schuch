class outside {

  void setup(float x, float y , float size) {

    noStroke();
    circle(x, y, size);
    
    stroke(0);
    strokeWeight(1);
    
    line(x - 8 , y + 5 , x + 8 , y + 5);
    line(x - 8 , y - 5 , x + 8 , y - 5);
    
    line(x - 10 , y + 3 , x + 10 , y + 3);
    line(x - 10 , y - 3 , x + 10 , y - 3);
    
    line(x - 10 , y + 1 , x + 10 , y + 1);
    line(x - 10 , y - 1 , x + 10 , y - 1);    
    
    line(x + 1 , y - 10 , x + 1 , y + 10);
    line(x - 1 , y - 10 , x - 1 , y + 10);
    
    line(x + 3 , y - 10 , x + 3 , y + 10);
    line(x - 3 , y - 10 , x - 3 , y + 10);  
    
    line(x + 5 , y - 8 , x + 5 , y + 8);
    line(x - 5 , y - 8 , x - 5 , y + 8);  

    //final
    strokeWeight(2);
    noFill();
    circle(x, y, size);
  }
}
