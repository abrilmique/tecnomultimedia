PImage televisor;
PFont simpsonsFont1;
PFont simpsonsFont2;

String estado;

int posX,posY,tx,ty;
int posXcreditos, posYcreditos;
int espacioCreditos;


void setup(){
 size(800,600);

 televisor= loadImage("televisorsimpsons.jpg");
 simpsonsFont1 = loadFont("Simpsonfont-48.vlw");
 simpsonsFont2 = loadFont("Homer_Simpson_Revised-48.vlw");
 
 estado= "home";

 posX= 340 ;
 posY= 425;
 tx=105;
 ty=40;
 
  posXcreditos = width/2;
  posYcreditos = height/2;
  espacioCreditos = 50; 
}

void draw(){ 
 
// PANTALLA INICIO

  if(estado=="home"){
   image(televisor,0,0,width,height); 
   fill(#FFF812);
   rect(posX,posY,tx,ty); //start
   fill(0);
   textFont(simpsonsFont1);
   textSize(30);
   text("start",350,433,105,40);
   
   fill(#FFF812);
   textSize(50);
   text("LOS",345+10,250);
   text("SIMPSONS",260,380);}
  
  
 //PANTALLA CREDITOS

if(mouseX > posX &&  mouseX < posX+tx && mouseY > posY && mouseY < posY+ty & mousePressed==true){
  
    background(0);
    if(millis()< 5000){
    background(0); 
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("Created by",posXcreditos-100,posYcreditos);
    text("MATT GROENING", posXcreditos-170 ,posYcreditos + espacioCreditos);
    
   }else if (millis()> 5000 && millis() < 8000){
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("Executive  Producer",posXcreditos-150,posYcreditos);
    text("JAMES L. BROOKS", posXcreditos-160 ,posYcreditos + espacioCreditos);
    
   }else if (millis()> 8000 && millis() < 11000) {
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("Executive  Producers",posXcreditos-150,posYcreditos-30);
    text("JAMES L. BROOKS", posXcreditos-150,posYcreditos-30 + espacioCreditos);
    text("MATT GROENING",  posXcreditos-150,posYcreditos+20 + espacioCreditos);
    text("SAM SIMON",posXcreditos-90,posYcreditos+60 + espacioCreditos);
    
  }else if (millis() > 11000 && millis() < 14000) {
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("Starring",posXcreditos-90,posYcreditos);
    text("DAN CASTELLANETA", posXcreditos-200 ,posYcreditos + espacioCreditos);
    
  }else if (millis() > 14000 && millis() < 17000) {
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("JULIE KAVNER",posXcreditos-150,posYcreditos+40);
    
   }else if (millis() > 17000 && millis() < 20000){
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("NANCY CARTWRIGHT",posXcreditos-180,posYcreditos+40);
    
   }else if (millis() > 20000 && millis() < 23000){
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("YEARDLEY SMITH",posXcreditos-180,posYcreditos+40);
    
     }else if (millis() > 23000 && millis() < 26000){
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("HANK AZARIA",posXcreditos-150,posYcreditos+40);
    
   }else if (millis() > 26000 && millis() < 29000){
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("and",posXcreditos-40,posYcreditos);
    text("HARRY SHEARER", posXcreditos-170 ,posYcreditos + espacioCreditos);
    
   }else if (millis() > 29000 && millis() < 32000){
    fill(#E3B339);
    textFont(simpsonsFont2);
    text("Animation Producers",posXcreditos-150,posYcreditos-30);
    text("LAURIE BIERNACKI", posXcreditos-150,posYcreditos-30 + espacioCreditos);
    text("RICK POLIZZI",  posXcreditos-150,posYcreditos+20 + espacioCreditos);
    
   }else if (millis() > 32000  && millis() < 35000 ){
     fill(#E3B339);
    textFont(simpsonsFont2);
    text("Music by",posXcreditos-150,posYcreditos);
    text("ALF CLAUSEN", posXcreditos-160 ,posYcreditos + espacioCreditos);
  
   }else if (millis() > 35000  && millis() < 38000 ){
   image(televisor,0,0,width,height); 
   fill(#FFF812);
   rect(posX,posY,tx,ty); //start
   fill(0);
   textFont(simpsonsFont1);
   textSize(30);
   text("start",350,433,105,40);
   
   fill(#FFF812);
   textSize(50);
   text("LOS",345+10,250);
   text("SIMPSONS",260,380);}
 
}
}
