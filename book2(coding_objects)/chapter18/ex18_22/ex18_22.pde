// 본문 코드: 마우스를 누른 위치에 인력을 만들어 원 객체들을 끌어당기기

Circle[] c = new Circle[100];
PVector mouse = new PVector(0, 0);

void setup() {
  size(500, 500);
  for (int i = 0; i < c.length; i++) {
    c[i] = new Circle();
    c[i].firstForce();
  }
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  fill(255, 0, 0);
  ellipse(mouse.x, mouse.y, 30, 30);

  for (int i = 0; i < c.length; i++) {
    c[i].display();
    c[i].move();
    c[i].bounce();
    c[i].addForce(mouse);
  }
}

void mousePressed() {
  mouse = new PVector(mouseX, mouseY);
}

// 클래스 코드

class Circle {
  PVector location, velocity, accel;
  float d, friction;
  color col;

  Circle() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    accel = new PVector(0, 0);
    d = 10;
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

  void addForce(PVector mouse) {
    PVector force = PVector.sub(mouse, location);
    force.normalize();
    force.mult(0.3);
    accel.add(force);
  }
}
