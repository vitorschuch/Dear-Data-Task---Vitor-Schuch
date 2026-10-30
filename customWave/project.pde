sine wave = new sine();
circular token = new circular();
float xPos = 50;
float yPos;
float spawn;
float dataPoints;
void setup() {
  
  fullScreen();
  background(100);
  //line
  line(0, height/2, width, height/2);
  //wave
  strokeWeight(2);
  stroke(255);
  wave.setup(xPos, 300, 5.75); // (0 to 675), (-380 to 380), (-100 to 100) any negative will flip the wave in the x-axis
  dataPoints = 0;
  // places the token at each turning point or x intercept
  colorMode(RGB,6);
  for (int i = 0; i<24; i++) {
    stroke(0);
    fill(0);
    line(xPos, 0, xPos, height);
    yPos = 15;
    for (int j = 0; j<30; j++) {
      spawn = random(0, 6);
      fill(spawn,spawn*2,spawn/2);
      if (spawn>5) {
        dataPoints += 1;

        token.setup(xPos, yPos, 20);
      }

      yPos = yPos + 25;
    }

    xPos = xPos + 55;
  }
  print(dataPoints);
}
