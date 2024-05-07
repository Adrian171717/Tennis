import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
ArrayList<Shape> shapes = new ArrayList<Shape>();
boolean scoredL=false, scoredR=false;
int ballDiameter;
Ball[] fireworks = new Ball[25];
//
void setup() {
  display();
  //audio();
  //
  TennisTable tennisTable = new TennisTable (appWidth*0, appHeight*1/10, appWidth, appHeight*8/10, 0);
  Ball ball = new Ball(tennisTable.w*1/2-ballDiameter*1/2, tennisTable.y+tennisTable.h*1/2, ballDiameter, ballDiameter, 255);
  //ballMove = new Ball(width*-1, height*-1, ball.d, ball.c, ball.xSpeed, ball.ySpeed, ball.xSpeedChange, ball.ySpeedChange);
  Net net = new Net(tennisTable.w*1/2-(tennisTable.w*1/55), tennisTable.y+tennisTable.h-(tennisTable.h*5/16), tennisTable.w*1/55, tennisTable.h*5/16, 255);
  Racket racketL = new Racket(net.x*1/2-(tennisTable.w*1/12)*1/2, tennisTable.h+tennisTable.y*2/3, tennisTable.w*1/11, tennisTable.h*1/70, 255);
  Racket racketR = new Racket(net.w+net.x*3/2-(tennisTable.w*1/12)*1/2, tennisTable.h+tennisTable.y*2/3, tennisTable.w*1/11, tennisTable.h*1/70, 255);
  racketL.netGrabber(net.x, net.y, net.w, net.h);
  racketR.netGrabber(net.x, net.y, net.w, net.h);
  //
  //Document Map
  shapes.add(tennisTable); //0
  shapes.add(ball); //1
  //shapes.add(net); //2
  //shapes.add(racketL); //3
  //shapes.add(racketR); //4
  //
  for (int i=0; i<fireworks.length; i++) {
    fireworks[i] = new Ball (appWidth*-1, appHeight*-1, ballDiameter, ballDiameter, 255);
  }
  //
}//End setup
//
void draw() {
  background(0);
  //
  for ( Shape s : shapes ) {
    s.draw();
  }
  /*
   for ( int=0; i<shapes.size(); i++ ) {
     shapes.get(i).draw();
   }
   */
}//End draw
//
void mousePressed() {
}//End mousePressed
//
void keyPressed() {
}//End keyPressed
//
//End MAIN Program
