class Ball extends Circle {
  //Global Variables
  int ballDiameter;
  float x, y, d, xSpeed, ySpeed, xDirection, yDirection, xSpeedChange, ySpeedChange;
  float racketLX, racketLY, racketLW, racketRX, racketRY, racketRW;
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    ballDiameter = (appWidth > appHeight) ? appHeight : appWidth;
    ballDiameter = ballDiameter*1/35;
  } //End Ball
  //
  //Methods
  //
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
  } //End Draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  }//End Night Mode Colour Selector
  //
  void ballMove(float xParameter, float yParameter, float dParameter, color cParameter, float xSpeedParameter, float ySpeedParameter, float xSpeedChangeParameter, float ySpeedChangeParameter) {
  this.x = ;
  this.y = ;
  this.d = ;
  this.c = ;
  } //End Move Ball
  //
  void ballBounce() {
  }//End ballBounce
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
