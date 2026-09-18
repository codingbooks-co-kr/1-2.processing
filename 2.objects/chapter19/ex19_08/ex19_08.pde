// 본문 코드: 마우스를 움직일 때마다 원 객체가 하나씩 생성되어 낙하, 바닥에 닿으면 소멸

ArrayList<Circle> circles;

void setup() {
  size(500, 500);
  circles = new ArrayList<Circle>();
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  for (int i = 0; i < circles.size(); i++) {
    Circle c = circles.get(i);
    c.display();
    c.move();
    if (c.location.y > height) {
      circles.remove(i);
    }
  }
  println(circles.size());
}

void mouseMoved() {
  circles.add(new Circle(mouseX, mouseY));
}

// 클래스 코드

class Circle {
  PVector location, velocity, accel;
  color col;
  float d;

  Circle(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(random(-5, 5), random(-10, -5));
    accel = new PVector(0, 0.3);
    col = color(random(255), random(255), random(255));
    d = 30;
  }

  void display() {
    fill(col);
    ellipse(location.x, location.y, d, d);
  }

  void move() {
    velocity.add(accel);
    location.add(velocity);
  }
}
