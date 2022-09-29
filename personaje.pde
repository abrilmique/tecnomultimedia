class Personaje {

  int xRana = 390;
  int yRana = 670;


  Personaje(int x, int y) {
    xRana = x;
    yRana= y;
  }  

  void Dibujar() {
    pushStyle();
    stroke(2);
    fill(26, 95, 26);
    ellipse(xRana, yRana, 30, 30);
    ellipse(xRana-10, yRana-10, 10, 10);
    ellipse(xRana+10, yRana-10, 10, 10);
    fill(0);
    ellipse(xRana-10, yRana-10, 4, 4);
    ellipse(xRana+10, yRana-10, 4, 4);
    noFill();
    popStyle();
  }
}
