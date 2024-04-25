/* 
*Tp1: Autoretrato/Retrato
*Comision 3: David Bedoian
*Agustin Basualdo
*DNI: 46936592
*Introduccion a la programacion para medios interactivos
*/

PImage img;
void setup() {
  size(800, 400);
  img=loadImage("Tp programacion img.jpg");
}
void draw() {
  background(252, 271, 171);
  image(img, 0, 0, 400, 400);
  //Fondo
  fill(162, 119, 62);
  rect(400, 114, 400, 286);
  fill(222, 122, 72);
  rect(535, 208, 142, 400);
  fill(255);
  rect(400, 0, 400, 114);
  //Orejas
  fill(234, 210, 156);
  stroke(0);
  ellipse(650, 175, 60, 45);
  ellipse(550, 175, 60, 45);
  //Cara
  noStroke();
  triangle(510, 120, 601, 211, 680, 120);
  triangle(523, 125, 550, 224, 601, 211);
  triangle(675, 125, 650, 224, 601, 205);
  //Menton
  beginShape();
  vertex(550, 223);
  vertex(576, 239);
  vertex(631, 239);
  vertex(651, 223);
  vertex(608, 207);
  vertex(590, 205);
  endShape();
  //Cuello
  stroke(0);
  beginShape();
  vertex(550, 223);
  vertex(551, 242);
  vertex(600, 263);
  vertex(649, 242);
  vertex(652, 223);
  endShape();
  //Contorno
  line(550, 223, 576, 239);
  line(576, 239, 631, 239);
  line(631, 239, 651, 223);
  line(550, 223, 527, 141);
  line(651, 223, 671, 132);
  //Ojo
  stroke(0);
  fill(255);
  ellipse(570, 157, 30, 10);
  ellipse(630, 157, 30, 10);
  //Cejas
  fill(0);
  rect(607, 140, 50, 5);
  rect(547, 140, 50, 5);
  //Pupila
  ellipse(630, 157, 10, 10);
  ellipse(570, 157, 10, 10);
  //Nariz
  ellipse(610, 190, 10, 2);
  ellipse(593, 190, 10, 2);
  //Labio
  noStroke();
  fill(232, 105, 105);
  beginShape();
  vertex(579, 210);
  vertex(592, 202);
  vertex(601, 204);
  vertex(608, 202);
  vertex(618, 210);
  vertex(609, 217);
  vertex(591, 217);
  endShape();
  //Pelo
  fill(0);
  ellipse(600, 210, 25, 6);
  ellipse(531, 116, 50, 50);
  ellipse(558, 110, 50, 50);
  ellipse(542, 109, 50, 50);
  ellipse(585, 111, 50, 50);
  ellipse(611, 112, 50, 50);
  ellipse(637, 107, 50, 50);
  ellipse(662, 108, 50, 50);
  ellipse(561, 101, 50, 50);
  ellipse(594, 93, 50, 50);
  ellipse(627, 93, 50, 50);
  ellipse(655, 100, 50, 50);
  ellipse(536, 101, 50, 50);
  ellipse(560, 90, 50, 50);
  ellipse(591, 86, 50, 50);
  ellipse(628, 86, 50, 50);
  ellipse(658, 93, 50, 50);
  ellipse(667, 108, 50, 50);
  //Ropa
  fill(255);
  triangle(550, 243, 550, 287, 600, 309);
  triangle(648, 243, 648, 287, 600, 309);
  rect(577, 265, 47, 50);
  fill(108, 136, 155);
  triangle(551, 287, 602, 311, 551, 311);
  rect(551, 311, 49, 89);
  triangle(600, 311, 649, 287, 649, 311);
  rect(600, 311, 49, 89);
  stroke(0);
  fill(85, 167, 191);
  beginShape();
  vertex(590, 289);
  vertex(590, 304);
  vertex(600, 310);
  vertex(612, 304);
  vertex(612, 289);
  endShape();
  rect(591, 269, 20, 20);
  fill(13, 29, 33);
  noStroke();
  triangle(551, 243, 551, 400, 480, 269);
  rect(480, 269, 70, 131);
  triangle(649, 243, 649, 400, 720, 269);
  rect(649, 269, 71, 131);
  stroke(0);
  triangle(720, 269, 720, 400, 764, 400);
  triangle(480, 269, 480, 400, 436, 400);
  stroke(85, 167, 191);
  line(551, 293, 600, 318);
  line(600, 318, 648, 293);
  stroke(50);
  line(550, 299, 600, 325);
  line(648, 299, 600, 325);
  line(550, 287, 600, 309);
  line(600, 309, 648, 288);
  beginShape();
  vertex(612, 289);
  vertex(612, 293);
  vertex(594, 306);
  vertex(590, 304);
  vertex(590, 301);
  vertex(607, 290);
  endShape();
  beginShape();
  vertex(591, 269);
  vertex(592, 274);
  vertex(610, 288);
  vertex(611, 282);
  vertex(595, 268);
  endShape();
  triangle(591, 287, 600, 289, 592, 283);
  fill(255);
  triangle(551, 242, 600, 264, 572, 297);
  triangle(649, 243, 632, 297, 600, 264);
  triangle(596, 268, 604, 268, 600, 264);
}
