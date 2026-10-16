// i need to make a circle with 12 notches spread evenly on its circumference with the first notch being northern, also it uses width, height, radius and is always center of the screen
float diameter;
float radius;
PVector circleCenter;
PVector north;
PVector east;
PVector south;
PVector west;

void setup() {
  //CANVAS SIZE
  size(500,500);
  
  // INITIALISE VARIABLES 
  circleCenter = new PVector(width/2,height/2);
  // getting a radius that fits in the window size
  if (width > height) 
  {
  diameter = height/2;
  }
  else
  {
  diameter = width/2; 
  }
  radius = diameter/2;
  // getting the position vectors of the cardinal points of the circle
  north = new PVector(circleCenter.x,circleCenter.y - radius);
  south = new PVector(circleCenter.x,circleCenter.y + radius);
  east = new PVector(circleCenter.x + radius,circleCenter.y);
  west = new PVector(circleCenter.x - radius,circleCenter.y);
  // for the text
  textAlign(CENTER,CENTER);
  textSize(diameter/18);
  
  // INITIALISE VISUALS
  strokeWeight(2);
  background(250);
}

void draw() {
  // draw circle
  noFill();
  circle(circleCenter.x,circleCenter.y,diameter);
  fill(255);
  // to visually check if the cardinal directions have the correct calculations 
  circle(north.x,north.y,diameter/16);
  circle(south.x,south.y,diameter/16);
  circle(east.x,east.y,diameter/16);
  circle(west.x,west.y,diameter/16);
  // now I want to represent this with letters inside the circles
  fill(0);
  text("N",north.x,north.y);
  text("S",south.x,south.y);
  text("E",east.x,east.y);
  text("W",west.x,west.y);
}
