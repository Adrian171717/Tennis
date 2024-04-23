class Racket extends Rectangle {
  //Global Variables
  float racketTravelDistance = 15;
  float netX, netY, netW, netH;
  boolean leftL=false, rightL=false, leftR=false, rightR=false;
  //
  Racket (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Circle
  //
  //Methods
  void draw() {
    fill(c);
    rect( x, y, w, h, 5);
    //
    if ( leftL == true ) moveRacketLLeft();
    if ( rightL == true ) moveRacketLRight();
    if ( leftR == true ) moveRacketRLeft();
    if ( rightR == true ) moveRacketRRight();
  } //End draw
  //
  color backgroundColour() {
    color colour = 0;
    return colour;
  }//End backgroundColour //End Night Mode Colour Selector
  //
  void netGrabber(float netXParameter, float netYParameter, float netWParameter, float netHParameter) {
    netX = netXParameter;
    netY = netYParameter;
    netW = netWParameter;
    netH = netHParameter;
  }
  //
  void moveRacketLLeft() {
    if ( x < netX ) {
      x -= racketTravelDistance;
      if ( x < 0 ) x = 0;
      if ( x < (netX + netW) && x > netX ) x = (netX + netW);
    }
  }//End moveRacketLLeft
  //
  void moveRacketLRight() {
    if ( x < netX ) {
      x += racketTravelDistance;
      if ( (x + w) > netX && (x + w) < (netX + netW) ) x = netX - w;
      if ( (x + w) > width ) x = width - w;
    }
  }//End moveRacketLRight
  //
  void moveRacketRLeft() {
    if ( x > netX ) {
      x -= racketTravelDistance;
      if ( x < 0 ) x = 0;
      if ( x < (netX + netW) && x > netX ) x = (netX + netW);
    }
  }//End moveRacketRLeft
  //
  void moveRacketRRight() {
    if ( x > netX ) {
      x += racketTravelDistance;
      if ( (x + w) > netX && (x + w) < (netX + netW) ) x = netX - w;
      if ( (x + w) > width ) x = width - w;
    }
  }//End moveRacketRRight
  //
  void keyPressedL() {
    if (key == 'a' || key == 'A') leftL=true;
    if (key == 'd' || key == 'D') rightL=true;
  }//End keyPressedL
  void keyReleasedL() {
    if (key == 'a' || key == 'A') leftL=false;
    if (key == 'd' || key == 'D') rightL=false;
  }//End keyReleasedL
  //
  void keyPressedR() {
    if (key == 'j' || key == 'J') leftR=true;
    if (key == 'l' || key == 'L') rightR=true;
  }//End keyPressedR
  void keyReleasedR() {
    if (key == 'j' || key == 'J') leftR=false;
    if (key == 'l' || key == 'L') rightR=false;
  }//End keyReleasedR
  //
} // End Circle
