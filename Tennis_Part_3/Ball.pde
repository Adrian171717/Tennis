class Ball extends Circle {
  //Global Variables
  float x, y, d, c, g, xSpeed, ySpeed, xDirection, yDirection, xSpeedChange, ySpeedChange;
  float racketLX, racketLY, racketLW, racketRX, racketRY, racketRW;
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    ballDiameter = (appWidth > appHeight) ? appHeight : appWidth;
    ballDiameter = ballDiameter*1/35;
    g = 0.15;
  } //End Ball
  //
  //Methods
  //
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
    //
    step();
  } //End Draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  }//End Night Mode Colour Selector
  //
  void Ball(int xParameter, int yParameter, float dParameter, color cParameter, float xSpeedParameter, float ySpeedParameter, float xSpeedChangeParameter, float ySpeedChangeParameter) {
  x = xParameter;
  y = yParameter;
  d = dParameter;
  c = cParameter;
  xSpeed = xSpeedParameter;
  ySpeed = ySpeedParameter;
  xSpeedChange = xSpeedChangeParameter;
  ySpeedChange = ySpeedChangeParameter;
  } //End Move Ball
  //
  void bounce() {
    if ( (x-w*1/2) < 0 ) {
      xSpeed *= -1;
      w *= 1;
    }
    if ( (x+w*1/2) > width ) {
      xSpeed *= -1;
      w *= 1;
    }
    if ( (y-h*1/2) < 0 ) {
      ySpeed *= -1;
      h *= 1;
    }
    if ( (y+h*1/2) > height ) {
      ySpeed *= -1;
      h *= 1;
    }
    if ( (y+h) > racketLY && (x) > racketLX && (x+w) < racketLX+racketLW ) {
      ySpeed *= -1;
      h *= 1;
    }
    if ( (y+h) > racketRY && (x) > racketRX && (x+w) < racketRX+racketRW ) {
      ySpeed *= -1;
      h *= 1;
    }
  }//End ballBounce
  //
  void step() {
    bounce();
    ySpeed += g;
    x += xSpeed * xSpeedChange;
    y += ySpeed * ySpeedChange;
  } //End step
  //
  void racketGrabber(float racketLXParameter, float racketLYParameter, float racketLWParameter, float racketRXParameter, float racketRYParameter, float racketRWParameter) { //for setup() & draw()
    racketLX = racketLXParameter;
    racketLY = racketLYParameter;
    racketLW = racketLWParameter;
    racketRX = racketRXParameter;
    racketRY = racketRYParameter;
    racketRW = racketRWParameter;
  } //End Racket Update
  //
} //End Ball
