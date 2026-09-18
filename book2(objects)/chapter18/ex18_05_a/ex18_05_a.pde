// 회전운동 (PVector 클래스 미사용)

float theta = 0.0, r = 250.0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  float x = width/2 + r * cos(theta);
  float y = height/2 + r * sin(theta);
  ellipse(x, y, 30, 30);
  theta += 0.05;
}
