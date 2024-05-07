abstract class Circle extends Shape {
  //Global Variables
  //
  Circle (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  } //End Circle
  //
  //Methods
  void draw() {
    fill(c);
    ellipse(x, y, w, h);
    fill(rd);
  } //End draw
  //
  abstract color backgroundColour();
  abstract void updateSetup( float variable1, float variable2, float variable3, float variable4, float variable5, float variable6, float variable7, float variable8, float variable9 );
  //
} // End Circle
