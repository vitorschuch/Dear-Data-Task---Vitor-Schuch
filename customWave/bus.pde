class bus {



  void setup(float x, float y, float size) {
    rectMode(CENTER);
    noStroke();
    rect(x,y,size,size);
    
    stroke(0);
    strokeWeight(1);
    //add
    ellipse(x , y , size * 0.6, size * 0.9);
    ellipse(x , y , size * 0.4, size * 0.6);
    line(x - 10, y, x+10, y);
    line(x, y - 10, x, y + 10);
    
    
    
    
    //final
    strokeWeight(2);
    noFill();
    rect(x,y,size,size);
  }
}
