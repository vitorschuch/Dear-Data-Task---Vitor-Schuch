sine wave = new sine();
circular token = new circular();
float xPos = 50;
float yPos;
void setup() {
  fullScreen();
  background(100);

  //line x
  //strokeWeight(2);
  //stroke(0);
  //line(0,height/2,width,height/2);

  //wave
  strokeWeight(4);
  stroke(255);
  wave.setup(xPos, 300, 5.75); // (0 to 675), (-380 to 380), (-100 to 100) any negative will flip the wave in the x-axis
  
  for (int i = 0; i<24;i++) {

    yPos = 15;
    token.setup(xPos,yPos,20);
    xPos = xPos + 55;
    //for (int j = 0; j<29;j++) {
    //token.setup(xPos,yPos,20);
    //yPos = yPos + 26;
    //}
  }

  //line y
  //strokeWeight(2);
  //stroke(0);
  //line(width/2,0,width/2,height);
}
