// this gonna be removed and delted as it was a place holder to begin with
cube emotion = new cube();
// this gonna be moved into the class
bus busToken = new bus();
home homeToken = new home();
outside outsideToken = new outside();
school schoolToken = new school();



//String[] locationArray = {"home", "outside", "bus", "school"};


// this will be modified
class circular {

  void setup(float xPos, float yPos, float size, int locationPosition) {
    emotion.setup(xPos - 12, yPos, size);

    if (locationPosition == 0) {
      homeToken.setup(xPos + 12, yPos, size);
    }
    if (locationPosition == 1) {
      outsideToken.setup(xPos + 12, yPos);
    }
    if (locationPosition == 2) {
      busToken.setup(xPos + 12, yPos);
    }
    if (locationPosition == 3) {
      schoolToken.setup(xPos + 12, yPos, size);
    }
  }
}
