class Troncos {
  float posX;
  float posY;
  float speed;

  Troncos(float x, float y, float xSpeed) {
    posX = x;
    posY = y;
    speed = xSpeed;
  }

  void Dibujar() {
    
    fill(173, 143, 59);
    rect(posX, posY, 128, 45);
   
  }
  void Mover() {
    posX+=speed;
    if (posX>width) {
      posX=0;
    }
    if (posX<0) {
      posX=width;
    }
  }
}
