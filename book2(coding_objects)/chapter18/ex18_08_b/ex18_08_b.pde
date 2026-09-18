// 낙하, 반사하는 원 (PVector 클래스 사용)

PVector location = new PVector(250, 0);
PVector velocity = new PVector(0, 0);
PVector accel = new PVector(0.0, 0.3);
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
  ellipse(location.x, location.y, 30, 30);
  velocity.add(accel);
  location.add(velocity);
  if (location.y > height) {
    location.y = height;
    velocity.y *= -1;
    velocity.mult(friction);
  }
}
