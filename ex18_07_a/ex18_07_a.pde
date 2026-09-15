// 상하좌우 반사하는 원 (PVector 클래스 미사용)

float x = 250, y = 250;
float velocity_x = 2, velocity_y = 3;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  ellipse(x, y, 30, 30);
  x += velocity_x;
  y += velocity_y;
  if (x < 0 || x > width) {
    velocity_x *= -1;
  }
  if (y < 0 || y > height) {
    velocity_y *= -1;
  }
}
