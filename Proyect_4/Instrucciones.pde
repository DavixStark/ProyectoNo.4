void instrucciones(){
  switch(pantalla){
    case 0:
    pushMatrix();
    background(0);
    fill(255);
    textSize(15);
    text("Presiona la tecla que desees para cambiar lo que aparece en pantalla\nPuedes cambiarlos mientras se ejecuta el programa",50,200);
    text("1    2    3    T    I", 50,250);
    text("Reacciona al numero de rostros que capta la camara",50,280);
    text("Enter para continuar", 50,400);
    popMatrix();
    if(key == ENTER){
      pantalla = 1;
    }
    break;
    
    case 1:
    cara.c();
    cara.dibujo();
    break;
  }
}
