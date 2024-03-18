void drawShapes() {
  drawNet();
  //drawBorder1();
  //drawBorder2();
}// End drawShapes
//
void drawNet() {
  rect( netX, netY, netWidth, netHeight );
  color(white);
}// End drawNet
//
void drawBorder1() {
  line( borderLX1, borderLY1, borderLX2, borderLY2 );
  strokeWeight(7);
  color(white);
}// End drawBorder1
//
void drawBorder2() {
  line( borderRX1, borderRY1, borderRX2, borderRY2 );
  strokeWeight(7);
  color(white);
}// End drawBorder2
//
