// 원의 중심에서 마우스와의 거리에 따라 원의 색상 변경

float r = 100.0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  float d = distance(width/2, height/2);
  println(d);
}

float distance(float x, float y) {
  float dd = dist(x, y, mouseX, mouseY);
  fill(dd, dd, 255);
  ellipse(x, y, r*2, r*2);
  return dd;
}
