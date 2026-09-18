// 본문 코드: 랜덤한 초기 위치에서 시작하여 원 객체들 상호간 만유인력 구현

Circle[] c = new Circle[1000];

void setup() {
  size(800, 500);
  for (int i = 0; i < c.length; i++) {
    c[i] = new Circle();
  }
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  for (int i = 0; i < c.length; i++) {
    c[i].display();
    c[i].move();
    for (int j = 0; j < c.length; j++) {
      if (i != j) {
        c[i].addForce(c[j]);
      }
    }
  }
}

// 클래스 코드

class Circle {
  PVector location, velocity, accel;
  float d, friction;
  color col;

  Circle() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    accel = new PVector(0, 0);
    d = 2;
    friction = 0.99;
    col = color(255);
  }

  void display() {
    fill(col);
    ellipse(location.x, location.y, d, d);
  }

  void move() {
    velocity.mult(friction);
    velocity.add(accel);
    location.add(velocity);
    accel.mult(0);
  }

  void addForce(Circle c) {
    float distance = PVector.dist(c.location, location);
    distance  = constrain(distance, 1, width);
    float strength = 1 / (distance * distance);

    PVector force = PVector.sub(c.location, location);
    force.normalize();
    force.mult(strength);
    accel.add(force);
  }
}
