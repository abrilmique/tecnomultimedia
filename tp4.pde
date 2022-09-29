https://youtu.be/WXzXeA5ihbU

int xRana = 390;
int yRana = 670;

Autos[] autos = new Autos[4];

Troncos[] troncos = new Troncos[4];


void setup() {
  size(800, 700);
  autos[0] = new Autos(100, 300, 2, 255, 0, 0); 
  autos[1] = new Autos(400, 400, 2, 0, 255, 0); 
  autos[2] = new Autos(200, 500, 2, 0, 0, 255);
  autos[3]= new Autos(330, 575, 2, 255, 0, 0);

  troncos[0] = new Troncos(80, 55, 4);
  troncos[1] = new Troncos(160, 250, 3);
  troncos[2] = new Troncos(200, 180, 2);
  troncos[3] = new Troncos(100, 105, 3);
}

void draw() {

  fill(155, 156, 173);
  rect(0, 350, 800, 400); //calle
  fill(250, 243, 28);
  fill(24, 121, 67);
  rect(0, 650, 800, 95);//verde
  rect(0, 300, 800, 50);//verde
  fill(6, 58, 156);//
  rect(0, 0, 800, 300);//agua
  fill(24, 121, 67);
  rect(0, 0, 800, 50);
  fill(6, 58, 156);




  for (int i = 0; i < 4; i++) {
    troncos[i].Dibujar();
    troncos[i].Mover();
  }


  for (int i=0; i<4; i++) {
    autos[i].Dibujar();
    autos[i].Mover();
  }


  stroke(2);
  fill(26, 95, 26);
  ellipse(xRana, yRana, 30, 30);
  ellipse(xRana-10, yRana-10, 10, 10);
  ellipse(xRana+10, yRana-10, 10, 10);
  fill(0);
  ellipse(xRana-10, yRana-10, 4, 4);
  ellipse(xRana+10, yRana-10, 4, 4);
  noFill();
}

void keyPressed() {
  if (key=='d')
    xRana= xRana+15;
  if (key=='a')
    xRana= xRana - 15;
  if (key=='s')
    yRana= yRana+15;
  if (key=='w')
    yRana= yRana - 15;
}
