void drawShapes() {
  drawNet();
  drawBorder1();
  drawBorder2();
}// End drawShapes
//
void drawNet() {
  rect( netX, netY, netWidth, netHeight );
}// End drawNet
//
void drawBorder1() {
  line( borderLX1, borderLY1, borderLX2, borderLY2 );
  strokeWeight(2);
}// End drawBorder1
//
void drawBorder2() {
  line( borderRX1, borderRY1, borderRX2, borderRY2 );
  strokeWeight(2);
}// End drawBorder2
//
void drawQuit() {
  line( quit1X1, quit1Y1, quit1X2, quit1Y2 );
  line( quit2X1, quit2Y1, quit2X2, quit2Y2 );
  strokeWeight(7);
}
//
