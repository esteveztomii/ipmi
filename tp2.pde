//Tomas Estevez, Comisión 3, TP2.


PImage img1, img2, img3;
float posX, posY;
int estado;
int opacidadDelTexto= 255;
PFont miFuente;
int contador;
String texto1, texto2, texto3;


void setup() {
  size(640, 480);
  img1 = loadImage("data/pantalla1.png");
  img2 = loadImage("data/pantalla2.png");
  img3 = loadImage("data/pantalla3.jpg");

 
  texto1 = "The Treachery of Sanctuary es una instalación que invita a los visitantes a interactuar con figuras de aves proyectadas en tres paneles de pantalla grande. Los movimientos del espectador son capturados por sensores de movimiento. La obra explora temas de libertad, transformación y autorreflexión.";
  texto2 = "Su autor es Chris Milk\n y fue instalado por primera vez en 2012\n los dispositivos utlizados fueron tres paneles de pantalla grande";
  texto3 = "The Treachery of Sanctuary, abre nuevas \n posibilidades para el uso de la tecnología en el arte contemporáneo.\nGracias por leer!";

  
  miFuente = loadFont("Calibri-BoldItalic-24.vlw");
  
  textFont( miFuente );
  textAlign(CENTER);

  
  estado = 1;
  contador = 0;
  posX = 10;
  posY = -100;

}
void draw() {

  background(0, 255, 0);
  
  if ( estado == 1 ) { 
    image( img1, 0, 0, width, height);
    
    contador++;
    if ( contador>=60 ) {
      estado++;
      contador = 0;
    }
    
  } else if ( estado == 2 ) {
    image( img1, 0, 0, width, height);
    fill(230,240,30);
    textSize(20);
    text ( texto1, posX, posY, 640, 480);
    
    posY+=2;
    
    if (posY>=height) {   
      estado = 3;
      contador = 0;
      posX = 600;
      posY = 150;
    }
  } else if ( estado == 3 ) {

    image( img2, 0, 0, width, height);
    posX=-640;
    posY=400;

    contador++;
    if ( contador>=30 ) {
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {
   
    image( img2, 0, 0, width, height);
    fill(230,240,30);
    textSize(20);
    text ( texto2, posX, posY, 600, 200);
    
    posX+=2;
    
    if (posX>=width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
    
      } else if ( estado == 5 ) {
    image( img3, 0, 0, width, height);
      opacidadDelTexto-=1;
    fill(230, 240,30, opacidadDelTexto);
    textSize(20);
    textAlign(CENTER,CENTER);
    text ( texto3, width / 2, height / 2);
   
      if ( mouseX>520 && mouseX<520+100
      && mouseY >400 && mouseY<400+50 ) {
      fill(150);
    } else {
      fill(230,240,30);
    }
    rect( 520, 400, 100, 50);
    fill(0);
    textSize(20);
    text("¿Reiniciar?",570,430);
    
    
  
    
  } else {
  
  }
}
void mousePressed() {
  if ( estado==5) {
     if ( mouseX>520 && mouseX<520+100
      && mouseY >400 && mouseY<400+50 ) {
      estado = 1;
      opacidadDelTexto=255;
       posX = 10; 
      posY = -100;
    }
  }else {
    estado++;
    contador = 0;
    posX = 10; 
    if (estado == 2) {
      posY = -100; 
    } else if (estado == 3) {
      posX = -640; 
      posY = 400; 
    }
  }
  }
