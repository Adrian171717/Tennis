class Fireworks extends Ball {
  //Global Variables
  int sparks = 25;
  float[] fX = new float [sparks];
  float[] fY = new float [sparks];
  float[] fW = new float [sparks];
  //float[] fH = new float [sparks];
  color[] fC = new color [sparks];
  Boolean trigger=false;
  //
  Fireworks (float x, float y, float w, float h, color c) {
    super(x, y, w, h, c);
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    updateVars();
  } //Fireworks
  //
  //Methods
  void draw() {
    while ( trigger==true ) {
      for ( int i=0; i<fX.length; i++) {
        fill(fC[i]);
        ellipse(fX[i], fY[i], fW[i], fW[i]);
        fill(rd);
      }
    }
  } //End draw
  //
  color backgroundColour() {
    color nm = 0;
    return nm;
  } //End Night Mode Colour Selector
  //
  void move() { //Note: could be different name
    //CAUTION: not the same as Ball.move()
    //Adds gravity
    //Students to finish
  } //End move
  void updateVars() {
    for ( int i=0; i<fX.length; i++ ) {
      fX[i] = x;
      fY[i] = y;
      fW[i] = random ( w*1/50, w*1.2 );
      //fH[i] = h;
      fC[i] = color(random(255), random(255), random(255));
    }
  } //End UpDate Variables
  void triggerUpdateXY(float x, float y, Boolean triggerParameter) {
    for ( int i=0; i<fX.length; i++ ) {
      fX[i] = x;
      fY[i] = y;
    }
    trigger=triggerParameter;
  } //End UpDate Variables
  //
} //End Fireworks
