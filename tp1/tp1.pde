//Tomas Estevez, TP1, Comisión 3.

PImage retrato;

void setup(){
  size(800,400);
  retrato = loadImage("retrato.JPG");
}

void draw(){
  background(20,10);
  image (retrato,400,0,400,400);
  
  fill(111,44,32);
  ellipse(200,400,200,400);//cuerpo
  stroke(1);
  ellipse(170,400,100,200);//brazo
  fill(224,134,146);
  noStroke();
  circle(200,200,180);//cabeza
  fill(216,203,46);
  circle(270,115,110);//pelo
  stroke(0,0,255);
  strokeWeight(45);
  line(205,130,270,200);//vincha
  noStroke();
  fill(255);
  circle (250,250,30);//arito
  ellipse(140, 190, 30, 15);//ojo
  fill(59,41,45);
  ellipse(145, 190, 10, 10);//pupila
  fill(255);
  ellipse(200, 200, 30, 15);//ojo
  fill(59,41,45);
  ellipse(205, 200, 10, 10);//pupila
  stroke(0);
  strokeWeight(1);
  line(180, 160, 160, 220);//nariz
  fill(209,102,36);
  noStroke();
  ellipse(160, 240, 30, 15);//labio
  stroke(1);
  line(145, 240, 175, 242);
  fill(111,44,32);
  noStroke();
  ellipse(125,215,3,5);//lunar
  fill(216,203,46);
  stroke(1);
  line(200,120,270,200);
   noStroke();
  triangle(270, 140, 370, 300, 270, 300);//pelo
 
}
