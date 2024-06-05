class Ball extends Circle {
  //Global Variables
  float d, g, xSpeed, ySpeed, xDirection, yDirection, xSpeedChange, ySpeedChange;
  float tableX, tableY, tableWidth, tableHeight, netX, netY, netWidth, netHeight, racketX, racketY, racketWidth, racketHeight, racketLX, racketLY, racketLWidth, racketLHeight, racketRX, racketRY, racketRWidth, racketRHeight;
  //
  Ball(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
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
  float xDirection() {
    xDirection = random(-1, 1);
    if ( xDirection < 0 ) {
      xDirection = -10;
    } else {
      xDirection = 10;
    }
    while ( xDirection == 0 ) {
      xDirection = 10;
    }
    return xDirection;
  }//End xDirection
  //
  float yDirection() {
    yDirection = random(-6,-9);
    while ( yDirection == 0 ) {
      yDirection = 10;
    }
    return yDirection;
  }//End yDirection
  //
  void step() {
    bounce();
    ySpeed += g;
    x += xSpeed * xSpeedChange;
    y += ySpeed * ySpeedChange;
    if ( ySpeed > -2 && ySpeed < 0 && y > width*3/4 && y < width*4/8 ) ySpeed += -5;
  } //End step
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
    if ( x < width*1/2 ) {
      if ( (y+h) > racketY && (x) > racketX && (x+w) < (racketX+racketWidth) ) {
          ySpeed *= -1;
      }
    }
    if ( x > width*1/2 ) {
      if ( (y+h) > racketY && (x) > racketX && (x+w) < (racketX+racketWidth) ) {
          ySpeed *= -1;
      }
    }
    /*
    if ( (x+w) > netX && (x+w) < (netX+netWidth) && (y+h) > netY ) {
     xSpeed *= -1;
    } 
     */
  }//End ballBounce
  //
  void tableXUpdate( float tableXParameter, float tableYParameter, float tableWidthParameter, float tableHeightParameter, float netXParameter, float netYParameter, float netWidthParameter, float netHeightParameter, float racketLXParameter, float racketLYParameter, float racketLWidthParameter, float racketLHeightParameter, float racketRXParameter, float racketRYParameter, float racketRWidthParameter, float racketRHeightParameter ) {
    tableX = tableXParameter;
    tableY = tableYParameter;
    tableWidth = tableXParameter + tableWidthParameter;
    tableHeight = tableHeightParameter;
    netX = netXParameter;
    netY = netYParameter;
    netWidth = netWidthParameter;
    netHeight = netHeightParameter;
    racketX = ( x < tableWidth*1/2 ) ? racketLXParameter : racketRXParameter;
    racketY = ( x < tableWidth*1/2 ) ? racketLYParameter : racketRYParameter;
    racketWidth = ( x < tableWidth*1/2 ) ? racketLWidthParameter : racketRWidthParameter;
    racketHeight = ( x < tableWidth*1/2 ) ? racketLHeightParameter : racketRHeightParameter;
  }//End tableXUpdate
  //
} //End Ball
