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
    tableHeight = height*8/10;
    tableWidth = width;
    tableX = 0;
    tableY = height*1/10;
    this.racketStartWidth = tableWidth*1/15; //For easter egg
    borderWidth = netX;
    //borderHeight = ;
    borderY = racketStartParameter + borderWidth;
    if ( racketStartParameter == 0 ) borderX = 0;
    if ( racketStartParameter == width ) borderX = netX + netWidth;
    this.racketWidth = racketStartWidth;
    racketHeight = tableHeight*1/50;
    this.racketX = netX*1/2;
    this.racketY = borderY - racketHeight;
    racketColour = white;
    this.racketTravelDistance = 15;
  }//End Racket
  //
  void draw() {
    fill(racketColour);
    rackets();
    fill(0);
    //
    if ( left == true ) moveRacketLeft;
    if ( right == true ) moveRacketRight;
    //
  }//End draw
  //
  void rackets() {
    rect(racketX, racketY, racketWidth, racketHeight);
  }//End rackets
  /*
  void moveRacketLeft() {
    racketX -= racketTravelDistance;
    if ( racketX < 0 ) racketX = 0;
    if ( racketX < (netX + netWidth), racketX > netX ) racketX = (netX + netWidth);
    left=false;
  }//End moveRacketLeft
  //
  void moveRacketRight() {
    racketx += racketTravelDistance;
    if ( (racketX + racketWidth) > netX, (racketX + racketWidth) < (netX + netWidth) ) racketX = netX - racketWidth;
    if ( (racketX + racketWidth) > width ) racketX = width - racketWidth;
    right=false;
  }//End moveRacketRight
  */
  //
  void keyPressedL() {
    if (key == 'a' || key == 'A') racketL.left=true;
    if (key == 'd' || key == 'D') racketL.right=true;
  }//End keyPressedL
  void keyReleasedL() {
    if (key == 'a' || key == 'A') racketL.left=false;
    if (key == 'd' || key == 'D') racketL.right=false;
  }//End keyReleasedL
  //
  void keyPressedR() {
    if (key == 'j' || key == 'J') racketR.left=true;
    if (key == 'l' || key == 'L') racketR.right=true;
  }//End keyPressedR
  void keyReleasedR() {
    if (key == 'j' || key == 'J') racketR.left=false;
    if (key == 'l' || key == 'L') racketR.right=false;
  }//End keyReleasedR
}//End Racket
