class Juego {

  Autos auto1, auto2, auto3, auto4;
  Personaje Rana;
  Troncos tronco1, tronco2, tronco3, tronco4;

  Juego(){
    auto1 = new Autos(100, 300, 2, 255, 0, 0);
    auto2= new Autos(400, 400, 2, 0, 255, 0);
    auto3= new Autos(200, 500, 2, 0, 0, 255);
    auto4= new Autos(330, 575, 2, 250, 243, 28);
    Rana= new Personaje(390,360);
    tronco1= new Troncos(20, 55, 2);
    tronco2= new Troncos(110, 230, 2);
    tronco3= new Troncos(80, 50, 2);
    tronco4= new Troncos(50, 115, 7);
   
  }

  void dibujar() {
    
    auto1.Dibujar();
    auto2.Dibujar();
    auto3.Dibujar();
    auto4.Dibujar();
    Rana.Dibujar();
    tronco1.Dibujar();
    tronco2.Dibujar();
    tronco3.Dibujar();
    tronco4.Dibujar();
   
  } 
  void Mover(){
    auto1.Mover();
    auto2.Mover();
    auto3.Mover();
    auto4.Mover();
    tronco1.Mover();
    tronco2.Mover();
    tronco3.Mover();
    tronco4.Mover();
  
}
}
