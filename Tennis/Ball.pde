class Ball
{
  //Global Variables
  float x, y, diameter;
  float xSpeed, ySpeed, xDirection, yDirection, xSpeedChange, ySpeedChange;
  float tableX, tableY, tableWidth, tableHeight, netX, netY, netWidth, netHeight, racketX, racketY, racketWidth, racketHeight, racketLX, racketLY, racketLWidth, racketLHeight, racketRX, racketRY, racketRWidth, racketRHeight;
  color colour;
  float ballGravity=0.15;
  //static int count = 25
  //
  //Constructor
  Ball() {
    //Local Variables, deleted at end of Constructor
    int startX = width*1/2;
    int startY = height*1/2;
    int referentMeasure = ( width < height ) ? width : height ;
    //
    //Object Variables
    this.x = startX;
    this.y = startY;
    this.diameter = referentMeasure * 1/20;
    this.colour = color ( random(0, 255), random(0, 255), random(0, 255) ); //random(), random()-shortcut, casting from float to intin color var
    this.xSpeed = xDirection();
    this.ySpeed = yDirection();
    this.xSpeedChange = 1.6;
    this.ySpeedChange = 1.6;
  } //End Constructor
  //
  Ball(float x, float y, float gravityParameter) {
    this.x = mouseX;
    this.y = mouseY;
    this.colour = color ( random(0, 255), random(0, 255), random(0, 255) );
    this.diameter = random(1/20);
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    ballGravity = gravityParameter;
  }//End Firework
  //
  Ball(float xParameter, float yParameter, float diameterParameter, color colourParameter, float xSpeedParameter, float ySpeedParameter, float xSpeedChangeParameter, float ySpeedChangeParameter) {
    this.x = xParameter;
    this.y = yParameter;
    this.diameter = diameterParameter;
    this.colour = colourParameter;
    this.xSpeed = xSpeedParameter;
    this.ySpeed = ySpeedParameter;
    this.xSpeedChange = xSpeedChangeParameter;
    this.ySpeedChange = ySpeedChangeParameter;
  }
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
  void draw() { //ball
    fill(colour);
    ellipse(x, y, diameter, diameter);
    fill(0);
    //
    step();
  }//End draw
  //
  void step() {
    bounce();
    ySpeed += ballGravity;
    x += xSpeed * xSpeedChange;
    y += ySpeed * ySpeedChange;
    if ( ySpeed > -2 && ySpeed < 0 && y > width*3/4 && y < width*4/8 ) ySpeed += -5;
  } //End step
  //
  void bounce() {
    if ( (x-diameter*1/2) < 0 ) {
      xSpeed *= -1;
      diameter *= 1;
    }
    if ( (x+diameter*1/2) > width ) {
      xSpeed *= -1;
      diameter *= 1;
    }
    if ( (y-diameter*1/2) < 0 ) {
      ySpeed *= -1;
      diameter *= 1;
    }
    if ( (y+diameter*1/2) > height ) {
      ySpeed *= -1;
      diameter *= 1;
    }
    if ( x < width*1/2 ) {
      if ( (y+diameter) > racketY && (x) > racketX && (x+diameter) < (racketX+racketWidth) ) {
          ySpeed *= -1;
          diameter *= 1;
      }
    }
    if ( x > width*1/2 ) {
      if ( (y+diameter) > racketY && (x) > racketX && (x+diameter) < (racketX+racketWidth) ) {
          ySpeed *= -1;
          diameter *= 1;
      }
    }
    /*
    if ( (x+diameter) > netX && (x+diameter) < (netX+netWidth) && (y+diameter) > netY ) {
     xSpeed *= -1;
     */
  }//End bounce
  //
  void tableYUpdate( float tableXParameter, float tableYParameter, float tableWidthParameter, float tableHeightParameter, float netXParameter, float netYParameter, float netWidthParameter, float netHeightParameter, float racketLXParameter, float racketLYParameter, float racketLWidthParameter, float racketLHeightParameter, float racketRXParameter, float racketRYParameter, float racketRWidthParameter, float racketRHeightParameter ) {
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
}//End Ball
