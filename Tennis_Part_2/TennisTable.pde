class TennisTable extends Shape {
  //Global Variables
  //
  TennisTable (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }//End TennistTable
  //
  //Methods
  void draw() {
    if ( scoredL==false || scoredR==false ) {
      fill(0);
    } else if ( scoredL==true || scoredR==true ) {
      fill(255);
    }
    rect(x, y, w, h);
  }//End draw
  //
  color backgroundColour() {
    color colour = 0;
    return colour;
  }//End backgroundColour
  //
  /* Features:
   - Give ball top/left/right lines to bounce off of
   - Give ball border dimensions and when it scores
   - Give racket edge of border, what it defends
   */
  //
  //
} // End Circle
