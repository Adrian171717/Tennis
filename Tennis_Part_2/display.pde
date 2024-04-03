int appWidth, appHeight;
boolean displaycheck=false;
PFont font;
float textX1, textY1, textWidth1, textHeight1;
color white = #FFFFFF, black = #000000;
//
void display() {
  println(width, height, displayWidth, displayHeight);
  appWidth = displayWidth;
  appHeight = displayHeight;
  displaycheck = ( displayWidth >= displayHeight ) ? false : true;
  if (displaycheck == true) displayLandscape();
  if (displaycheck == false) displayPortrait();
  println(displaycheck);
}//End display
//
void displayLandscape() {
  
}//End displayLandscape
//
void displayPortrait() {
  textWidth1 = width*63/100;
  textHeight1 = height*1/10;
  textX1 = width*1/2 - textWidth1*1/2;
  textY1 = height*1/2 - textHeight1*1/2;
  font = createFont ("Arial", 75);
  textFont(font);
  text("Flip your phone to landscape mode!", textX1, textY1, textWidth1, textHeight1);
  fill(black);
  textAlign (CENTER, CENTER);
}//End displayPortrait
