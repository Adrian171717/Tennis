class Net extends Rectangle {
  //Global Variables
  //
  Net (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Scoreboard
  //
  //Methods
  void draw() {
    fill(c);
    rect( x, y, w, h, 5);
  }//End draw
  //
} //End Scoreboard
