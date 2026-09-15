// 원의 진동 (PVector 클래스 미사용)

float theta = 0.0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  float x = width/2 + width/2 * cos(theta);
  float y = height/2 + height/2 * sin(theta);
  fill(255, 0, 0);
  ellipse(x, height/2, 30, 30);
  fill(0, 255, 0);
  ellipse(width/2, y, 30, 30);
  theta += 0.05;
}
