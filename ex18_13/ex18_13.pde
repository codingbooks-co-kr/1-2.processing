// 마우스로 원을 끌어 놓기 (PVector 미사용)

boolean choice = false;
float x = 250, y = 250, r = 30;

void setup() {
  size(500, 500);
}

void draw() {
  // 페이딩 효과
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);

  fill(255, 255, 0);
  ellipse(x, y, r*2, r*2);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, x, y);
  if (d < r) {
    choice = true;
  }
}

void mouseReleased() { 
  choice = false;
}

void mouseDragged() { 
  if (choice) {
    float dx = mouseX - pmouseX;
    float dy = mouseY - pmouseY;
    x = mouseX - dx;
    y = mouseY - dy;
  }
}
