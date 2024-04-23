abstract class Shape {
  //Global Variables
  float x; //X-Variable, Position
  float y; //Y-Variable, Position
  float w; //Width
  float h; //Height
  color c, rd; //Shape Colour
  //
  //Constructor
  Shape(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    rd = backgroundColour();
  } //End Constructor
  //
  //Methods
  abstract void draw(); //Empty draw()
  //
  abstract color backgroundColour(); //End Night Mode Colour Selector
  //
} //End Shape
