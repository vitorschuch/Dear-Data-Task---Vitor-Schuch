cube place = new cube();
pyramid emotion = new pyramid();
// this will be modified
class circular {

  void setup(float xPos, float yPos, float size) {

    place.setup(xPos - 12,yPos, size);
    emotion.setup(xPos+12, yPos);
  }
}
