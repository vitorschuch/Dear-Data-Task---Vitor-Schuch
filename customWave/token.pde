// this gonna be removed and delted as it was a place holder to begin with
bus busToken = new bus();
home homeToken = new home();
outside outsideToken = new outside();
school schoolToken = new school();

calm calmToken = new calm();
impatient impatientToken = new impatient();
content contentToken = new content();
happy happyToken = new happy();
nervous nervousToken = new nervous();
tired tiredToken = new tired();
energized energizedToken = new energized();
excited excitedToken = new excited();
good goodToken = new good();
bad badToken = new bad();
neutral neutralToken = new neutral();

class circular {
  void setup(float xPos, float yPos, float size, int locationPosition, int emotionPosition) {

    strokeWeight(3.5);
    fill(100);
    if (emotionPosition == 0) {
      calmToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 1) {
      impatientToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 2) {
      contentToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 3) {
      happyToken.setup(xPos - 12, yPos, size);
    } 
    else if (emotionPosition == 4) {
      nervousToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 5) {
      tiredToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 6) {
      // size unused
      energizedToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 7) {
      // size unused
      excitedToken.setup(xPos - 12, yPos, size);
    } 
    else if (emotionPosition == 8) {
      goodToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 9) {
      badToken.setup(xPos - 12, yPos, size);
    }
    else if (emotionPosition == 10) {
      neutralToken.setup(xPos - 12, yPos, size);
    }
    
    // this is not clean but it works!
    fill(360);
    strokeWeight(2);
    if (locationPosition == 0) {
      homeToken.setup(xPos + 12, yPos, size);
    }
    else if (locationPosition == 1) {
      outsideToken.setup(xPos + 12, yPos, size);
    }
    else if (locationPosition == 2) {
      busToken.setup(xPos + 12, yPos, size);
    }
    else if (locationPosition == 3) {
      schoolToken.setup(xPos + 12, yPos, size);
    }
    
  }
}
