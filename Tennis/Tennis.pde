//Global Variables and Objects
Ball tennisBall;
Ball[] fireworks = new Ball[25];
Ball movedBall;
Racket tennisTable, racketL, racketR;
//
color tennisTableColour=5, white=#FFFFFF;
float middle, gravity=0.5;
float netX, netY, netWidth, netHeight;
float borderLX1, borderLY1, borderLX2, borderLY2;
float borderRX1, borderRY1, borderRX2, borderRY2;
float quit1X1, quit1Y1, quit1X2, quit1Y2, quit2X1, quit2Y1, quit2X2, quit2Y2;
boolean leftL=false, rightL=false, leftR=false, rightR=false;
//
void setup() {
  fullScreen();
  //size(1800, 900);
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
  quit1X1 = width*2/100;
  quit1Y1 = 0 + (quit1X1 - width*0);
  quit1X2 = width*6/100;
  quit1Y2 = quit1Y1 + (quit1X2 - quit1X1);
  quit2X1 = quit1X2;
  quit2Y1 = quit1Y1;
  quit2X2 = quit1X1;
  quit2Y2 = quit1Y2;
  //
  movedBall = new Ball(width*-1, height*-1, tennisBall.diameter, tennisBall.colour, tennisBall.xSpeed, tennisBall.ySpeed, tennisBall.xSpeedChange, tennisBall.ySpeedChange);
  //tennisTable = new Racket( ,  );
  racketL = new Racket( 0, tennisBall.diameter );
  racketR = new Racket( width, tennisBall.diameter );
} //End setup
//
void draw() {
  //background(tennisTableColour);
  background(white);
  drawShapes();
  //
  racketL.draw();
  racketR.draw();
  //
  println(racketL.racketX, racketR.racketX);
  tennisBall.tableYUpdate( racketL.tableX, racketL.tableY, racketL.tableWidth, racketL.tableHeight, netX, netY, netWidth, netHeight, racketL.racketX, racketL.racketY, racketL.racketWidth, racketL.racketHeight, racketR.racketX, racketR.racketY, racketR.racketWidth, racketR.racketHeight );
  println(tennisBall.ySpeed, tennisBall.xSpeed);
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
    if (key == 'x' || key == 'X') exit();
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
  if ( mouseX>=quit1X1 && mouseX<=quit1X2 && mouseY>=quit1Y1 && mouseY<=quit1Y2 ) {
    exit();
  }
} //End mousePressed
//
//End DRIVER
