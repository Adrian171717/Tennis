import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
boolean scoredL=false, scoredR=false;
int ballDiameter;
TennisTable tennisTable;
Ball ball;
Ball ballMove;
Ball[] fireworks = new Ball[25];
Net net;
Racket racketL, racketR;
Quit quit;
//
void setup() {
  //size(600,900);
  fullScreen();
  display();
  //audio();
  //
  ballDiameter = (appWidth > appHeight) ? appHeight : appWidth;
  ballDiameter = ballDiameter*1/35;
  //
  tennisTable = new TennisTable (appWidth*0, appHeight*1/10, appWidth, appHeight*8/10, 0);
  ball = new Ball(tennisTable.w*1/2-ballDiameter*1/2, tennisTable.y+tennisTable.h*1/2, ballDiameter, ballDiameter, 255);
  println(ballDiameter, ball.w, ball.h);
  //ballMove = new Ball(width*-1, height*-1, ball.d, ball.c, ball.xSpeed, ball.ySpeed, ball.xSpeedChange, ball.ySpeedChange);
  net = new Net(tennisTable.w*1/2-(tennisTable.w*1/55), tennisTable.y+tennisTable.h-(tennisTable.h*5/16), tennisTable.w*1/55, tennisTable.h*5/16, 255);
  racketL = new Racket(net.x*1/2-(tennisTable.w*1/12)*1/2, tennisTable.h+tennisTable.y*2/3, tennisTable.w*1/11, tennisTable.h*1/70, 255);
  racketR = new Racket(net.w+net.x*3/2-(tennisTable.w*1/12)*1/2, tennisTable.h+tennisTable.y*2/3, tennisTable.w*1/11, tennisTable.h*1/70, 255);
  racketL.netGrabber(net.x, net.y, net.w, net.h);
  racketR.netGrabber(net.x, net.y, net.w, net.h);
  quit = new Quit(height*1/60, height*1/60, width*1/10, height*1/15, 0);
  //
  for (int i=0; i<fireworks.length; i++) {
    fireworks[i] = new Ball (appWidth*-1, appHeight*-1, ballDiameter, ballDiameter, 255);
  }
}//End setup
//
void draw() {
  displaycheck = ( width >= height ) ? true : false;
  if (displaycheck == true) { //LANDSCAPE (run code)
    displayLandscape();
    println("landscape");
    tennisTable.draw();
    ball.draw();
    racketL.draw();
    racketR.draw();
    net.draw();
    //
    ball.tableXUpdate( tennisTable.x, tennisTable.y, tennisTable.w, tennisTable.h, net.x, net.y, net.w, net.h, racketL.x, racketL.y, racketL.w, racketL.h, racketR.x, racketR.y, racketR.w, racketR.h );
    //
    for (int i=0; i<fireworks.length; i++) {
      fireworks[i].draw();
    }
  }
  if (displaycheck == false) { //PORTRAIT (error message)
    displayPortrait();
    println("portrait");
  }
  //
}//End draw
//
void mousePressed() {
}//End mousePressed
//
void keyPressed() {
  racketL.keyPressedL();
  racketR.keyPressedR();
  //
  if (keyPressed) {
    if (key == 'x' || key == 'X') exit();
  }
  //
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      if (scoredL == false && scoredR == false) {
        scoredL = true;
        scoredR = true;
      } else {
        scoredL = false;
        scoredR = false;
      }
    }
  }
}//End keyPressed
void keyReleased() {
  racketL.keyReleasedL();
  racketR.keyReleasedR();
}//End keyReleased
//
//End Driver
