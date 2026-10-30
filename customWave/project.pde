sine wave = new sine();

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
  wave.setup(50, 300, 5.75); // (0 to 675), (-380 to 380), (-100 to 100) any negative will flip the wave in the x-axis

  //line y
  //strokeWeight(2);
  //stroke(0);
  //line(width/2,0,width/2,height);
}
