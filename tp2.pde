// https://youtu.be/k3DAlKgVsnQ

int cant = 35; 
int value; 

void setup() {
  size(600, 600);
  strokeWeight(7);
}
void draw() {
  background(0);

  for (int t=3; t<cant; t++) { 
    float tam = map(t, 15, cant, 360, 5); 
    float movx = map (t, 10, cant, mouseX + random (1.5), height/2 );  
    float movy = map (t, 5, cant, mouseY + random (1), height/2);

    if (t%5==10) {
      fill (255);
    } else {
      fill ( map(mouseX, mouseY, width, 140, 255), 255, 255);
    }
    rectMode(CENTER); 
    rect(movx, movy, tam, tam);
  }
}
void keyPressed () {
  if (key== 'r') {
    reinicio();
  }
}

void reinicio() {
  if (value<300 || value>300) 
    value=width/2;
  mouseY = value;
  mouseX = value;
}
