void Ganaste() {

  if (bloquedesaparece==1) {
    textSize(50);
    textAlign(CENTER);
    text("GANASTE!!!", width/2, height/2);
    textSize(15);
    textAlign(CENTER);
    text (" Presiona la barra espaciadora para reiniciar", 310, 230);
    x = 250;
    y = 350;
    speedX = 0;
    speedY = 0;
  }
}

void Perdiste() {
  if (y>height) {

    textSize(40);
    textAlign(CENTER);
    text("Perdiste :(", 310, 260);
    textSize(15);
    textAlign(CENTER);
    text("Presione la barra espaciadora para reiniciar el juego", 310, 290);
  }
}
