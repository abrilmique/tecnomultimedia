//fondo
void setup(){
size(600,600);
background(15,136,165);
noStroke();
fill(245);
rect(-1,530,602,110);

//cuerpo
noStroke();
fill(255,255,255);
ellipse(150,480,220,220);
ellipse(150,315,180,180);
ellipse(150,180,150,150);

//ojos 
fill(0);
ellipse (130,160,15,15);
ellipse (170,160,15,15);

//nariz
noStroke();
fill(255,152,41);
triangle(156, 185, 213, 184,155,205);

//boca
fill(0);
ellipse(113,212,10,10);
ellipse(120,219,10,10);
ellipse(129,223,10,10);
ellipse(139,225,10,10);
ellipse(149,226,10,10);
ellipse(159,225,10,10);
ellipse(168,223,10,10);
ellipse(176,218,10,10);
ellipse(183,211,10,10);

//sombrero
fill(139,19,13);
rect(89,95,120,15);
rect(110,40,80,65);

//botones 
fill(167,23,15);
ellipse(150,270,22,22);
ellipse(150,300,22,22);
ellipse(150,330,22,22);
ellipse(150,359,22,22);

//manos
stroke(75,54,33);
strokeWeight(5);
line(236,291,280,360);
line(60,291,27,362);

//casa
noStroke();
fill(152,130,95);
rect(330,280,248,250);
fill(198,54,57);
triangle(319,282,453,150,587,281);

//ventanas
fill(187,225,234);
stroke(173,123,42);
rect(349,307,83,50);
line(351,330,430,330);
line(390,310,390,354);

fill(187,225,234);
rect(469,308,83,50);
line(470,330,550,330);
line(509,308,509,356);

fill(187,225,234);
rect(470,395,83,50);
line(509,395,509,442);
line(470,418,552,418);

//puerta
noStroke();
fill(118,78,24);
rect(350,420,90,110);

//nieve
fill(255);
ellipse(345,225,5,5);
ellipse(245,256,5,5);
ellipse(296,420,5,5);
ellipse(490,99,5,5);
ellipse(301,55,5,5);
ellipse(47,126,5,5);
ellipse(23,270,5,5);
ellipse(385,114,5,5);
ellipse(579,233,5,5);
ellipse(553,23,5,5);
ellipse(120,11,5,5);
ellipse(265,135,5,5);

}
