class Racket {
  //
  //Global Variables
  float tableX, tableY, tableWidth, tableHeight;
  float borderX, borderY, borderWidth, borderHeight;
  float racketX, racketY, racketWidth, racketHeight, racketStartWidth, racketTravelDistance;
  color racketColour;
  //
  //Overloaded Constructor
  Racket( float racketStartParameter, float ballDiameterParameter ) {
    tableWidth = width;
    tableHeight = height*8/10;
    tableX = 0;
    tableY = height*1/10;
    this.racketStartWidth = tableWidth*1/12; //For easter egg
    if ( racketStartParameter == 0 ) borderX = 0;
    if ( racketStartParameter == width ) borderX = netX + netWidth;
    borderY = racketStartParameter + borderWidth;
    borderWidth = netX;
    borderHeight = height*1/10;
    this.racketWidth = racketStartWidth;
    this.racketHeight = tableHeight*1/50;
    this.racketX = ( racketStartParameter == 0 ) ? (netX*1/2 - racketWidth*1/2) : (netX*3/2 + netWidth - racketWidth*1/2);
    this.racketY = height*9/10 - racketHeight;
    this.racketColour = white;
    this.racketTravelDistance = 15;
  }//End Racket
  //
  void draw() {
    table();
    fill(racketColour);
    rackets();
    fill(0);
    drawShapes();
    //
    if ( left == true ) moveRacketLeft();
    if ( right == true ) moveRacketRight();
    //
  }//End draw
  //
  void table() {
    //rect( tableX, tableY, tableWidth, tableHeight);
  }// End table
  void rackets() {
    rect(racketX, racketY, racketWidth, racketHeight);
  }//End rackets
  //
  void moveRacketLeft() {
    racketX -= racketTravelDistance;
    if ( racketX < 0 ) racketX = 0;
    if ( racketX < (netX + netWidth) && racketX > netX ) racketX = (netX + netWidth);
  }//End moveRacketLeft
  //
  void moveRacketRight() {
    racketX += racketTravelDistance;
    if ( (racketX + racketWidth) > netX && (racketX + racketWidth) < (netX + netWidth) ) racketX = netX - racketWidth;
    if ( (racketX + racketWidth) > width ) racketX = width - racketWidth;
  }//End moveRacketRight
  //
  void keyPressedL() {
    if (key == 'a' || key == 'A') left=true;
    if (key == 'd' || key == 'D') right=true;
  }//End keyPressedL
  void keyReleasedL() {
    if (key == 'a' || key == 'A') left=false;
    if (key == 'd' || key == 'D') right=false;
  }//End keyReleasedL
  //
  void keyPressedR() {
    if (key == 'j' || key == 'J') left=true;
    if (key == 'l' || key == 'L') right=true;
  }//End keyPressedR
  void keyReleasedR() {
    if (key == 'j' || key == 'J') left=false;
    if (key == 'l' || key == 'L') right=false;
  }//End keyReleasedR
}//End Racket
