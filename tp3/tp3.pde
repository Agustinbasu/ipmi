/*
 *Tp1: Autoretrato/Retrato
 *Comision 3: David Bedoian
 *Agustin Basualdo
 *DNI: 46936592
 *Link del video explicativo: https://www.youtube.com/watch?v=1S0bxF5-H4k
 */

//Variables globales
PImage img;
int cantX = 19;
int cantY = 19;
float centerX = 600;
float centerY = 200;
boolean followMouse = false;

void setup() {
  size(800, 400);
  img = loadImage("imagen.jpg");
}

void draw() {
  background(0);
  image(img, 0, 0, 400, 400);
  //Vartacion de la posicion de la distorcion
  if (followMouse) {
    centerX = mouseX;
    centerY = mouseY;
  }
  //Invocacion de la funcion propia con parametros que no retorna valor
  dibujoydistorcion (400 / cantX, 400 / cantY);
}

//Vartacion de la posicion de la distorcion
void mousePressed() {
  followMouse = true;
}

void keyPressed() {
  followMouse = false;
  centerX = 600;
  centerY = 200;
}
