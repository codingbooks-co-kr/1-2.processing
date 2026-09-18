// 마우스를 누르면 랜덤 이동하다가 감쇄하며 멈추는 원 (클래스로 구현)

Circle c;

void setup() {
  size(500, 500); 
  c = new Circle();
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  c.display();
  c.move();
  c.bounce();
}

void mousePressed() {
  c.randomMove();
}

class Circle {
  PVector location, velocity;
  float d, friction;
  color col;

  Circle() {
    location = new PVector(width/2, 50);
    velocity = new PVector(random(-5, 5), random(-5, 5));
    d = 30;
    friction = 0.99;
    col = color(255);
  }

  void display() {
    fill(col);
    ellipse(location.x, location.y, d, d);
  }

  void move() {
    velocity.mult(friction);
    location.add(velocity);
  }

  void randomMove() {
    velocity.set(random(-5, 5), random(-5, 5));
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
}
