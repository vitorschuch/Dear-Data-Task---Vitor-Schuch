//// i need to make a circle with 12 notches spread evenly on its circumference with the first notch being northern, also it uses width, height, radius and is always center of the screen
//float diameter;
//float radius;
//PVector circleCenter;
//PVector north;
//PVector east;
//PVector south;
//PVector west;

//void setup() {
//  //CANVAS SIZE
//  size(800,600);
//  rectMode(CENTER);
//  // INITIALISE VARIABLES 
//  circleCenter = new PVector(width/2,height/2);
//  // getting a diameter that fits in the window size
//  if (width > height) 
//  {
//    // change float and it works
//  diameter = height/1.2;
//  }
//  else
//  {
//    // change float and it works
//  diameter = width/1.2; 
//  }
//    // needed for the cardinality
//  radius = diameter/2;
//  // getting the position vectors of the cardinal points of the circle
//  north = new PVector(circleCenter.x,circleCenter.y - radius);
//  south = new PVector(circleCenter.x,circleCenter.y + radius);
//  east = new PVector(circleCenter.x + radius,circleCenter.y);
//  west = new PVector(circleCenter.x - radius,circleCenter.y);
  
//  // INITIALISE VISUALS
//  strokeWeight(2);
//  background(250);

//}

//void draw() {
//  // draw circle
//  noFill();
//  circle(circleCenter.x,circleCenter.y,diameter);
//  // my notch can look like this for now 
//  strokeWeight(1);
//  fill(0);
//  rect(width/2,height/2,width/32,height/8);
 
//}
