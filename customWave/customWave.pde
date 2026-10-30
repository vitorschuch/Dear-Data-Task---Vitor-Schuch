class sine {

  float w, h, angle, anglePlusOne;

  void setup(float xSquish, float ySquish, float frequency)
  {
    h = height;
    w = width;
    angle = 0;
    
    float angleIncrement = TWO_PI / (w - 2 * xSquish) * frequency;
    
    anglePlusOne = angleIncrement;
    
    for (float i = xSquish; i < (w - xSquish); i++)
    {
      line(i, (h/2) + sin(angle)*ySquish, i+1, (h/2) + sin(anglePlusOne)*ySquish);
      angle = angle + angleIncrement;
      anglePlusOne = anglePlusOne + angleIncrement;
    }
    
  }
}
