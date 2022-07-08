//https://youtu.be/f_6Jd3V0xY4

int[] ladrillos = new int[25];

String estado;

int x = 250 ;
int y = 350;
int speedX = 3;
int speedY = -3;

int paletaX = 300; //posicion de la paleta en x
int paletaY = 370; //posicion de la paleta en y
int mitadancho = 40; // la mitad del ancho de la paleta

int Puntaje = 0; //score
int i; 
float posX;
float posY;
int bloquedesaparece;

void setup() {

  size(600, 400);
  rectMode(CENTER);
  estado= "BRICK BREAKERS";


  for (i=0; i<25; i++) {
    ladrillos [i] = 1;
  }
}


void draw() {

  if ( estado=="BRICK BREAKERS" ) {
    background(90, 80, 100 );
    textSize(50);
    fill(255, 0, 50);
    text(estado, 130, 60);
    textSize(25);
    text("Instrucciones:", 15, 100);
    textSize(20);
    fill(255);
    text(" El objetivo del juego es destruir los ladrillos con la pelota \n para ganar, si dejas que caiga la pelota perderás.", 13, 130);
    text("Abril Miquelarena", 15, 225);
    text("Comisión 2", 15, 250);
    text("Tecno Multimedia 1", 15, 275);
    text ("Profesor: Matías Jauregui Lorda", 15, 300);
    fill(255, 0, 50);
    textSize(25);
    text("Créditos:", 15, 200);
    textSize(20);
    text( "Presione 's' para  iniciar", 180, 350 );
    
  } else if ( estado== "jugando" ) {

    background(90, 80, 100);
    textSize(16);
    textAlign(RIGHT);
    text("Puntaje", 80, 390);
    textAlign(LEFT);
    text(Puntaje, 90, 390);
    textAlign(RIGHT);

    fill(50, 100, 20);
    ellipse(x, y, 10, 10);
    fill(70, 50, 100);
    rect(paletaX, paletaY, mitadancho*2+1, 15);
    fill(255, 100, 50);

    x = x + speedX;
    y = y + speedY;
    if (x>width || x<0)  
      speedX = -speedX;
    if (y<0)
      speedY = -speedY;


    if (keyPressed) {
      if (keyCode == RIGHT || key == 'd') { //mover paleta derecha

        paletaX = paletaX + 8;
      } else if (keyCode == LEFT || key == 'a') { // mover paleta izquierda


        paletaX = paletaX - 8;
      } else if (key == ' ') { // reiniciar variables pelota y paleta
        x = 250 + int(random(-80, 100)); //posicion de la pelota al comienzo. con random empieza de diferentes lugares
        y = 350;
        speedX = 3; 
        speedY = -3;
        paletaX = 300;
        Puntaje= 0;

        for (i=0; i<25; i++) {
          ladrillos [i] = 1;
        }
      }
    }


    if ((paletaX- mitadancho)<x && (paletaX+ mitadancho)>x && 
      (paletaY-10)<y && (paletaY)>y) {  //si la pelota toca la paleta reduce la velocidad y suma un punto

      speedY = -speedY;
      Puntaje = Puntaje + 1;
    }


    if (y>height) {  //si la pelota sale de la pantalla perdes
      Perdiste();
    }

    bloquedesaparece = 1;

    for (i=0; i<25; i++) {

      posX = i%5*115+15; //pos x de los ladrillos
      posY = 40*(i/5)+15; //pos y de los ladrillos

      if (ladrillos [i]==1) { 

        rect(posX+40, posY+10, 80, 20); // dibujar rectangulos 

        bloquedesaparece = 0;
      }

      if (x>(posX+4) && x<(posX+76) &&
        y>posY && y<(posY+20) && ladrillos[i]==1) {  //si la pelota toca alguno de los los ladrillos, desaparece y suma 5 puntos
        ladrillos [i]=0;
        speedY = -speedY;
        Puntaje = Puntaje + 5;
      }

      if (((x>(posX-10) && x<posX) || (x>(posX+90) && x<(posX+95))) &&
        y>posY && y<(posY+30) && ladrillos[i]==1) { 
        ladrillos[i]=0;
        speedX = -speedX;
        Puntaje = Puntaje + 5;
      }

      if (((x>(posX-1) && x<(posX+5)) || (x>(posX+75) && x<(posX+81))) &&
        y>posY && y<(posY+20) && ladrillos[i]==1) { 
        ladrillos[i]=0;
        speedX = -speedX;
        speedY = -speedY;
        Puntaje = Puntaje + 5;
      }
    }
  }


  if (bloquedesaparece==1) {
    Ganaste();
  }
}



void keyPressed() {
  if ( estado.equals("BRICK BREAKERS") && key == 's' ) {
    estado = "jugando";
  }
}
