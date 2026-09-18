// 불규칙 운동 (PVector 클래스 사용)

PVector location = new PVector(0, 0);
float tx = 0.0, ty = 0.5;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  location.x = noise(tx) * width;
  location.y = noise(ty) * height;
  ellipse(location.x, location.y, 30, 30);
  tx += 0.01;
  ty += 0.01;
}
