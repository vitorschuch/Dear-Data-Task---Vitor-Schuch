class school {

  void setup(float x, float y, float size) {

    noStroke();
    circle(x, y, size);
    
    stroke(0);
    strokeWeight(1);
    //add
    rect(x - 4, y , size / 7, size / 1.15);
    rect(x + 4, y , size / 7, size / 1.15);    
    
    
    //final
    strokeWeight(2);
    noFill();
    circle(x, y, size);
  }
}
