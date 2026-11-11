class home {

  void setup(float x, float y, float size) {
    rectMode(CENTER);

    noStroke();
    circle(x, y, size);
    
    stroke(0);
    strokeWeight(1);
    
    rect(x - 4.5, y + 5, size / 9, size / 2.5 );
    rect(x + 4.5, y + 5, size / 9, size / 2.5 );
    triangle(x - 8, y, x - 5, y - 5, x - 2, y);
    triangle(x + 7, y, x + 4, y - 5, x + 1, y);

    //final
    strokeWeight(2);
    noFill();
    circle(x, y, size);
  }
}
