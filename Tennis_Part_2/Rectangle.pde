abstract class Rectangle extends Shape {
  //Global Variables
  //
  Rectangle(float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
  }
  //
  //Methods
  void draw() {
    fill(c);
    rect(x, y, w, h);
    fill(rd);
  } //End draw
  //
  color backgroundColour() {
    color colour = 255;
    return colour;
  }//End backgroundColour
  //
} // End Circle
