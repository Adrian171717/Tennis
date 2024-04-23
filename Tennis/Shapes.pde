void drawShapes() {
  drawNet();
  drawBorder1();
  drawBorder2();
  drawQuit();
}// End drawShapes
//
void drawNet() {
  fill(white);
  rect( netX, netY, netWidth, netHeight, 5 );
}// End drawNet
//
void drawBorder1() {
  color(white);
  fill(white);
  strokeWeight(2);
  line( borderLX1, borderLY1, borderLX2, borderLY2 );
}// End drawBorder1
//
void drawBorder2() {
  fill(white);
  strokeWeight(2);
  line( borderRX1, borderRY1, borderRX2, borderRY2 );
}// End drawBorder2
//
void drawQuit() {
  fill(white);
  strokeWeight(7);
  line( quit1X1, quit1Y1, quit1X2, quit1Y2 );
  fill(white);
  strokeWeight(7);
  line( quit2X1, quit2Y1, quit2X2, quit2Y2 );
}
//
