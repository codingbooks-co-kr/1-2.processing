// 마우스 왼쪽 버튼을 누르면 원의 크기가 한번 증가, 오른쪽 버튼을 누르는 동안 지속적 증가

float d = 10.0;

void setup() {
  size(300, 300);
  noLoop();
}

void draw() {
  background(0);
  ellipse(width/2, height/2, d, d);
  d += 10.0;
}

void mousePressed() {
  if (mouseButton == LEFT) {
    redraw();
  }
  if (mouseButton == RIGHT) {
    loop();
  }
}

void mouseReleased() {
  noLoop();
}
