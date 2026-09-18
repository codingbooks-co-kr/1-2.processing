// 가속력과 마찰력을 받으며 이동하는 원이 사각형 안에 들어가면 또 다른 마찰력 받기

import java.awt.Rectangle;

Rectangle r;
PVector location, velocity, accel;
float d = 30, friction1 = 0.99, friction2 = 0.95;

void setup() {
  size(500, 500);
  r = new Rectangle(100, 200, 300, 100);
  location = new PVector(width/2, 50);
  velocity = new PVector(0, 0);
  accel = new PVector(0, 0);
  firstForce();
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  fill(255);
  rect(r.x, r.y, r.width, r.height);

  fill(255, 0, 0);
  ellipse(location.x, location.y, d, d);

  if (r.contains(location.x, location.y)) {
    velocity.mult(friction2);
  } else {
    velocity.mult(friction1);
  }
  velocity.add(accel);
  location.add(velocity);
  accel.mult(0);

  // 경계에 부딪힐 때 반사 적용
  if (location.x < 0) {
    location.x = 0;
    velocity.x *= -1;
  }
  if (location.x > width) {
    location.x = width;
    velocity.x *= -1;
  }
  if (location.y < 0) {
    location.y = 0;
    velocity.y *= -1;
  }
  if (location.y > height) {
    location.y = height;
    velocity.y *= -1;
  }
}

void firstForce() {
  PVector force = new PVector(random(-5, 5), random(-5, 5));
  accel.add(force);
}

void mousePressed() {
  firstForce();
}
