

String[] rectTypes  = { "a", "b", "c", "d" };
String[] acuteTypes = { "a", "b" };

void setup() {
  size(64, 64);
  noLoop();

  // Generar 100 imágenes de cada triángulo rectángulo
  for (String t : rectTypes) {
    for (int i = 1; i <= 100; i++) {
      background(255);
      drawRightTriangle(t);
      saveFrame("data/triangulo-rectangulo-" + t + "-" + nf(i, 3) + ".png");
    }
  }

  // Generar 100 imágenes de cada triángulo acutángulo
  for (String t : acuteTypes) {
    for (int i = 1; i <= 100; i++) {
      background(255);
      drawAcuteTriangle(t);
      saveFrame("data/triangulo-acutangulo-" + t + "-" + nf(i, 3) + ".png");
    }
  }

  exit();
}

// Dibuja triángulo rectángulo centrado
void drawRightTriangle(String type) {
  float r = 24;
  float cx = width/2;
  float cy = height/2;
  stroke(0);
  strokeWeight(4);
  noFill();

  if (type.equals("a")) {
    // ángulo recto debajo-izquierda
    triangle(cx - r, cy + r,
             cx + r, cy + r,
             cx - r, cy - r);
  } else if (type.equals("b")) {
    // ángulo recto debajo-derecha
    triangle(cx - r, cy + r,
             cx + r, cy + r,
             cx + r, cy - r);
  } else if (type.equals("c")) {
    // ángulo recto encima-izquierda
    triangle(cx - r, cy - r,
             cx + r, cy - r,
             cx - r, cy + r);
  } else {
    // type=="d": ángulo recto encima-derecha
    triangle(cx - r, cy - r,
             cx + r, cy - r,
             cx + r, cy + r);
  }
}

// Dibuja triángulo acutángulo invertido: base arriba, ápice abajo
void drawAcuteTriangle(String type) {
  float r = 24;
  float cx = width/2;
  float cy = height/2;
  stroke(0);
  strokeWeight(4);
  noFill();

  if (type.equals("a")) {
    // base más ancha arriba
    triangle(cx - r * 0.9, cy - r,
             cx + r * 0.9, cy - r,
             cx, cy + r);
  } else {
    // base más estrecha arriba
    triangle(cx - r * 0.6, cy - r,
             cx + r * 0.6, cy - r,
             cx, cy + r);
  }
}
