// 본문 코드: 마우스를 움직이면 원이 생성되어 낙하, 사각형에 들어가면 크기 감소 및 소멸

import java.awt.Rectangle;

ArrayList<Circle> circles;
Rectangle r;

void setup() {
  size(500, 500);
  circles = new ArrayList<Circle>();
  r = new Rectangle(0, 400, width, 40);
}

void draw() {
  background(0);
  fill(255);
  rect(r.x, r.y, r.width, r.height);
  for (int i = 0; i < circles.size(); i++) {
    Circle c = circles.get(i);
    c.display();
    c.move();
    if (c.location.y > height) {
      circles.remove(i);
    }
    if (r.contains(c.location.x, c.location.y)) {
      c.melt();
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
    col = color(random(255), random(255), random(255));
    location = new PVector(x, y);
    velocity = new PVector(random(-5, 5), random(-10, -5));
    accel = new PVector(0, 0.3);
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

  void melt() {
    velocity = new PVector(0, 0);
    d -= 0.2;
    if (d < 0) {
      d = 0;
    }
  }
}
