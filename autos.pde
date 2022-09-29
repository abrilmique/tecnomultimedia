class Autos {
  float autosX;
  float autosY;
  float autosXSpeed;

  int ColorRojo;
  int ColorVerde;
  int ColorAzul;

  Autos(float x, float y, float xSpeed, int R, int V, int A) {
    autosX = x;
    autosY = y;
    autosXSpeed = xSpeed;
    ColorRojo= R;
    ColorVerde = V;
    ColorAzul = A;
  } 
  void Dibujar() {
    noStroke();
    fill(ColorRojo, ColorVerde, ColorAzul);
    rect(autosX-5, autosY+10, 70, 45); 
    rect(autosX - 25, autosY + 30, 50, 40); 
    rect(autosX +25, autosY + 40, 75, 30);
    fill(0);
    ellipse(autosX, autosY + 70, 30, 30);
    ellipse(autosX + 70, autosY + 70, 30, 30); 
  }
  void Mover() {
    autosX += autosXSpeed+3;
    if (autosX > width) {
      autosX = 0;
    }
    if (autosX < 0) {
      autosX = width;
    }
  }
}
