class circular {

void setup(float xPos,float yPos,float size) {
  
strokeWeight(2);

//lines
stroke(50);
fill(200);
line(xPos,0,xPos,height);

stroke(0,20);
line(xPos-12,0,xPos-15,height);
line(xPos+12,0,xPos+15,height);

//circle
stroke(0);
circle(xPos-12, yPos, size);
circle(xPos+12, yPos, size);


}



}
