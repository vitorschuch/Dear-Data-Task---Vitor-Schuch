sine wave = new sine();
circular token = new circular();
float xPos = 50;
float yPos;
float spawn;
float dataPoints;
int babayaga;

void setup() {
  String[] time = loadStrings("time.txt");
  // need it to only read the first string then ignore anything past the first space
  String[] data = loadStrings("data.txt");

  fullScreen();
  background(100);
  //line
  line(0, height/2, width, height/2);
  //wave
  strokeWeight(2);
  stroke(255);
  wave.setup(xPos, 375, 5.75); // (0 to 675), (-380 to 380), (-100 to 100) any negative will flip the wave in the x-axis
  wave.setup(xPos, -375, 5.75);
  dataPoints = 0;
  // places the token at each turning point or x intercept // this will be replaced
  colorMode(RGB, 6);
  for (int i = 0; i<24; i++) {
  // this is 24 for the amount of hours in the day
    yPos = 15;
    // babayaga is a counter for every emotion / location at a given hour, this should remain i need to alter token to place varying emotions based on my data now
    babayaga = 0;

    for (int k = 0; k < data.length; k++) {
      //print(data[k] + " ");
      //println(time[i]);
      if (data[k].equals(time[i])) {
        // increases per hour that is recorded
        babayaga = babayaga + 1;
      }
    }
    // places the tokens
    for (int j = 0; j<babayaga; j++) {
      stroke(0);
      fill(random(1,6),random(1,6),6);
      token.setup(xPos, yPos, 20);
      yPos = yPos + 25;
    }
    // moves onto the next hour until 0 to 23 is complete
    xPos = xPos + 55;
  }

}
