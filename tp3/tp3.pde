//Tomas Estevez, tp3
//https://youtu.be/jb9ovuhhpKQ


PImage img1;
int cant, tam, startX, aumentar;

void setup(){
 size(800,400);
 img1=loadImage("arteoptico.jpeg");

  cant=14;
  startX=width/2;
  tam= width/cant;
  aumentar=0;
}

void draw(){
background(0);
image(img1,0,0,width/2,height);

aumentarFormas();

  String mensaje = funcionamiento();
  textSize(20);
  fill(0,255,0);
  text(mensaje, 10, height-60);  
  
  for (int i=0;i<cant;i++){
  for(int x=0;x<cant;x++){
    
    float distancia = dist(mouseX, mouseY, startX+i*tam, x*tam);
    float tono= distancia*255/dist(width, height, 0,0);
    fill(random(200,255),tono);
    
    push();
    stroke(255,100);
    strokeWeight(24);
    fill(0);
    rect(startX+i*tam,x*tam,tam+aumentar,tam+aumentar);
         pop();
         noStroke();
    ellipse(startX+i*tam,x*tam,25+aumentar,25+aumentar);

  
  }
}

}

void aumentarFormas(){
  if (mousePressed){
    aumentar +=5;
} else{ 
  }
}

  void keyPressed() {
    if (keyPressed && key == ENTER) {  
    aumentar = 0; 
}
  }
  
 String funcionamiento() {
  return "Bienvenido al programa. \n Aumente el tamaño presionando el\n mouse y reinicie el mismo con ENTER";
}
