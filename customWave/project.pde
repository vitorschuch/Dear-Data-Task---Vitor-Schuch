
// TIPS: 1) IF ERROR, MAKE SURE NOTES ARE SAVED
//       2) CONTROL+H AND REMOVE ALL SPACES FROM TEXT FILES
//       3) IF YOUR SYMBOLS LOOK CRAZY ONE DAY, MAKE THEM RELATIVE TO SIZE
sine wave = new sine();
circular token = new circular();
float xPos = 50;
float yPos;
float spawn;
float dataPoints;
int babayaga;
color babyBlue;
color white;
color darkBlue;

// this is my first method of the program
int currentLocation(String x, int returnValue) {
  if (x.equals("home")) {
    returnValue = 0;
  } else if (x.equals("outside")) {
    returnValue = 1;
  } else if (x.equals("bus")) {
    returnValue = 2;
  } else if (x.equals("school")) {
    returnValue = 3;
  }

  return returnValue;
}

int currentEmotion(String x, int returnValue) {
  if (x.equals("calm")) {
    returnValue = 0;
  } else if (x.equals("impatient")) {
    returnValue = 1;
  } else if (x.equals("content")) {
    returnValue = 2;
  } else if (x.equals("happy")) {
    returnValue = 3;
  } else if (x.equals("nervous")) {
    returnValue = 4;
  } else if (x.equals("tired")) {
    returnValue = 5;
  } else if (x.equals("energized")) {
    returnValue = 6;
  } else if (x.equals("excited")) {
    returnValue = 7;
  } else if (x.equals("good")) {
    returnValue = 8;
  } else if (x.equals("bad")) {
    returnValue = 9;
  } else if (x.equals("neutral")) {
    returnValue = 10;
  } 
  return returnValue;
}

void setup() {

  // the plan is simple im making a method that outputs 0,1,2,3 depending on if the string reads home outside bus or school repectively this is then used as a parameter in the
  // token tab to decide which location class will be displayed this can be done with if statementss in the token class as well as intializing an array of locations in token
  // that are indexed as described on line 1

  colorMode(HSB, 360);
  // add more colours then go to the babayaga for loop and append it with the same technique 
  color babyBlue = color(180, 360, 300);
  color white = color(0, 0, 360);
  color darkBlue = color(240, 280, 90);
  color black = color(0,0,0);
  color grey = color(360,0,180);

  String[] time = loadStrings("time.txt");
  // need it to only read the first string then ignore anything past the first space
  String[] data = loadStrings("data.txt");

  String[] colour = loadStrings("colour.txt");
  String[] colourColumn = new String[0];

  String[] location = loadStrings("location.txt");
  String[] locationColumn = new String[0];

  String[] emotion = loadStrings("emotion.txt");
  String[] emotionColumn = new String[0];
  
  fullScreen();
  background(100);

  //line
  line(0, height/2, width, height/2);
  //wave
  strokeWeight(6);
  stroke(255,50);
  line(xPos,0,xPos,height);
  line(width - xPos,0,width - xPos,height);
  stroke(255,25);
  wave.setup(xPos, 375, 5.75); // (0 to 675), (-380 to 380), (-100 to 100) any negative will flip the wave in the x-axis
  wave.setup(xPos, -375, 5.75);
  dataPoints = 0;
  // places the token at each turning point or x intercept // this will be replaced

  for (int i = 0; i<24; i++) {
    // this is 24 for the amount of hours in the day
    yPos = 15;
    // babayaga is a counter for every emotion / location at a given hour, this should remain i need to alter token to place varying emotions based on my data now
    babayaga = 0;

    for (int k = 0; k < data.length; k++) {

      if (data[k].equals(time[i])) {
        // increases per hour that is recorded
        colourColumn = append(colourColumn, colour[k]);
        locationColumn = append(locationColumn, location[k]);
        emotionColumn = append(emotionColumn, emotion[k]);
        babayaga = babayaga + 1;
      }
    }

    // places the tokens
    for (int j = 0; j<babayaga; j++) {
      stroke(0);
      
      // this dictates the colours and location appearance
      if (colourColumn[j].equals("babyblue")) {
        stroke(babyBlue);
      } else if (colourColumn[j].equals("white")) {
        stroke(white);
      } else if (colourColumn[j].equals("dark")) {
        stroke(darkBlue);
      } else if (colourColumn[j].equals("black")) {
        stroke(black);
      } else if (colourColumn[j].equals("grey")) {
        stroke(grey);
      }
      // now the fourth parameter should be an int between 0 and 3 ( to be increased... ), fifth should be between 0 and 10
      // it is depositing all the needed information for the next token (pair of two symbols) emotion and location respectively
      token.setup(xPos, yPos, 20, currentLocation(locationColumn[j], 0) , currentEmotion(emotionColumn[j] , 0) );
      yPos = yPos + 25;
    }
    // moves onto the next hour until 0 to 23 is complete
    xPos = xPos + 55;
    // empty colourColumn

    colourColumn = new String[0];
    locationColumn = new String[0];
    emotionColumn = new String[0];
  }
}
