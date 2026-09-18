// 낙하, 반사하는 원 (PVector 클래스 미사용)

float x = 250, y = 0;
float velocity = 0;
float accel = 0.3;
float friction = 0.95;

void setup() {
  size(500, 500);
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);
  
  fill(255);
  ellipse(x, y, 30, 30);
  velocity += accel;
  y += velocity;
  if (y > height) {
    y = height;
    velocity *= -1;
    velocity *= friction;
  }
}
