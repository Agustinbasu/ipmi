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
  if (followMouse) {
    centerX = mouseX;
    centerY = mouseY;
  }
  dibujoydistorcion (400 / cantX, 400 / cantY);
}

void mousePressed() {
  followMouse = true;
}

void keyPressed() {
  followMouse = false;
  centerX = 600;
  centerY = 200;
}
