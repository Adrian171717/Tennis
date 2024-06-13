class Quit extends Rectangle {
  //Global Variables
  //
  Quit (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Quit
  //
  //Methods
  void draw() {
    fill(c);
    rect( x, y, w, h, 5);
  }//End draw
  //
} //End Quit
