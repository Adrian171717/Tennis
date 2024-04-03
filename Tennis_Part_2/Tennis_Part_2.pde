import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
//

//
void setup() {
  fullScreen();
  display();
}//End setup
//
void draw() {
  displayLandscape();
}//End draw
//
void mousePressed() {
  
}//End mousePressed
//
void keyPressed() {
  if (keyPressed) {
    if (key == 'x' || key == 'X') exit();
  }
}//End keyPressed
//
//End Driver
