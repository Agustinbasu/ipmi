//Declaracion de variables
float posX, posY;
PImage obra, artista, lugar;
int contador, estado;
PFont fuentenueva;
String texto1, texto2, texto3;
int opacidadTexto;

void setup() {
  size(640, 480);
  //Asignacion de valores
  opacidadTexto=255;
  posX = 10;
  posY = 300;
  contador = 0;
  estado = 1;
  obra = loadImage("obraelectronica.jpg");
  artista = loadImage("autora.jpg");
  lugar = loadImage("lugarendondeseencuentra.jpg");
  fuentenueva = loadFont("MyanmarText-Bold-38.vlw");
  texto1 = "Nombre de la obra: \nInfinity Mirrored Room \n–The Souls of Millions\nof Light Years Away.";
  texto2 = "Yayoi Kusama es una\nde las artistas\nplásticas más famosas\nde décadas recientes.";
  texto3 = "Actualmente, esta obra se\nencuentra en el museo\nThe Broad de Los Angeles.";
}

void draw() {
  //Fuente
  textFont(fuentenueva);
  textAlign(LEFT);
  fill(255);
  //Cambio de estado
  if (contador >= 120) {
    estado++;
    contador = 0;
  } else {
    contador++;
  }
  //Pantalla 1
  if (estado== 1) {
    image(obra, 0, 0, width, height);
    text(texto1, posX, posY);
  }
  //Transicion 1-2
  else if (estado== 2) {
    image(obra, 0, 0, width, height);
    text(texto1, posX, posY);
    posX += 13;
    if (posX >= width) {
      estado++;
      posX = 10;
      posY = 300;
    }
  }
  //Pantalla 2
  else if (estado==3) {
    image(artista, 0, 0, width, height);
    text(texto2, posX, posY);
  }
  //Transicion 2-3
  else if (estado== 4) {
    image(artista, 0, 0, width, height);
    fill(255, opacidadTexto);
    textSize(map(opacidadTexto, 255, 0, 38, 0));
    text(texto2, posX, posY);
    opacidadTexto-= 13;
    if (opacidadTexto<=0) {
      estado=5;
      posX=10;
      posY=300;
      opacidadTexto=255;
    }
  }
  //Pantalla 3
  else if (estado==5) {
    image(lugar, 0, 0, width, height);
    text(texto3, posX, posY);
  }
  //Transicion del texto 3
  else if (estado>=6) {
    image(lugar, 0, 0, width, height);
    text(texto3, posX, posY);
    posY -= 13;
    //Boton de reinicio
    if (mouseX>422 && mouseX<422+200 && mouseY>424 && mouseY<424+50) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    rect(422, 424, 200, 50);
    fill(0);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("REINICIAR", 522, 449);
  }
}
void mousePressed() {
  if (estado>=6) {
    if (mouseX>422 && mouseX<422+200 && mouseY>424 && mouseY<424+50) {
      estado=1;
      posX=10;
      posY=300;
      contador=0;
    }
  }
}
