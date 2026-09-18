// 회전운동 (PVector 클래스 사용)

PVector location = new PVector(0, 0);
float theta = 0.0, r = 250.0;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  location.x = width/2 + r * cos(theta);
  location.y = height/2 + r * sin(theta);
  ellipse(location.x, location.y, 30, 30);
  theta += 0.05;
}
