// Función que retorna un valor (distancia entre dos puntos)
float calcularDistancia(float x1, float y1, float x2, float y2) {
  return dist(x1, y1, x2, y2);
}

// Función que retorna un valor (tamaño basado en la distancia)
float calcularTamaño(float distancia) {
  return distancia * 25 / dist(600, 200, width, height);
}

// Funcion que no retorna un valor (for anidado dibujando las ellipses y las distorcion del tamaño)
void dibujoydistorcion(float modX, float modY) {
  for (int x = 0; x < width / 2; x++) {
    for (int y = 0; y < height; y++) {
      float distan = calcularDistancia(centerX, centerY, 400 + x * modX, y * modY);
      float tamaño = calcularTamaño(distan);
      noStroke();
      fill(255);
      ellipse(400 + x * modX, y * modY, tamaño, tamaño);
    }
  }
}
