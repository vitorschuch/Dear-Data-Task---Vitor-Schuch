class circular {

  void setup(float xPos, float yPos, float size) {

    strokeWeight(2);

    //circle
    stroke(0);
    circle(xPos-12, yPos, size);
    circle(xPos+12, yPos, size);
  }
}
