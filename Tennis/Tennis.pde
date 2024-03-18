//Global Variables and Objects
Ball tennisBall;
Ball[] fireworks = new Ball[25];
Ball movedBall;
Racket racketL, racketR;
//
color tennisTableColour=5, white=#FFFFFF;
float middle, gravity=0.5;
float netX, netY, netWidth, netHeight;
float borderLX1, borderLY1, borderLX2, borderLY2;
float borderRX1, borderRY1, borderRX2, borderRY2;
boolean left=false, right=false;
//
void setup() {
  fullScreen();
  //Population
  tennisBall = new Ball();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(width*-1, height*-1, 0.5);
  }
  //
  //Population
  middle = width*1/2;
  //
  netWidth = width*1/50;
  netHeight = height*1/4;
  netX = middle - netWidth*1/2;
  netY = height - netHeight;
  //
  borderLX1 = 0;
  borderLY1 = height*9/10;
  borderLX2 = netX;
  borderLY2 = borderLY1;
  //
  borderRX1 = netX + netWidth;
  borderRY1 = borderLY1;
  borderRX2 = width;
  borderRY2 = borderRY1;
  //
  //movedBall = new Ball( mouseX, mouseY, tennisBall.diameter, tennisBall.colour );
  racketL = new Racket( 0, tennisBall.diameter );
  racketR = new Racket( width, tennisBall.diameter );
} //End setup
//
void draw() {
  background(tennisTableColour);
  //
  racketL.draw();
  racketR.draw();
  //
  tennisBall.tableYUpdate( racketL.tableX, racketL.tableY, racketL.tableWidth, racketL.tableHeight, racketL.racketX, racketR.racketX, racketL.racketY, racketR.racketY, racketL.racketWidth, racketL.racketHeight, racketR.racketHeight );
  //
  //drawShapes();
  tennisBall.draw();
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i].draw();
  }
} //End draw
//
void keyPressed() {
  racketL.keyPressedL();
  racketR.keyPressedR();
  //
  if (keyPressed) {
    if (key == 'x' || key == 'X') {
      exit();
    }
  }
} //End keyPressed
void keyReleased() {
  racketL.keyReleasedL();
  racketR.keyReleasedR();
}//End keyReleased
//
void mousePressed() {
  for (int i=0; i < fireworks.length; i++) {
    fireworks[i] = new Ball(mouseX, mouseY, 0.5);
  }
} //End mousePressed
//
//End DRIVER
