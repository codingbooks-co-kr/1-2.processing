// 본문 코드: 가속력, 중력, 마찰력 및 인력을 받는 원

Circle c;

void setup() {
  size(500, 500);
  c = new Circle();
  c.firstForce();
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  c.display();
  c.move();
  c.bounce();
  if (mousePressed) {
    c.addForce();
  }
}

// 클래스 코드

class Circle {
  PVector location, velocity, accel, gravity;
  float d, friction;
  color col;

  Circle() {
    location = new PVector(width/2, 50);
    velocity = new PVector(0, 0);
    accel = new PVector(0, 0);
    gravity = new PVector(0.0, 0.1);
    d = 30;
    friction = 0.99;
    col = color(255);
  }

  void display() {
    fill(col);
    ellipse(location.x, location.y, d, d);
  }

  void move() {
    accel.add(gravity);
    velocity.mult(friction);
    velocity.add(accel);
    location.add(velocity);
    accel.mult(0);
  }

  void bounce() {
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

  void addForce() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector force = PVector.sub(mouse, location);
    force.normalize();
    force.mult(0.3);
    accel.add(force);
  }
}
