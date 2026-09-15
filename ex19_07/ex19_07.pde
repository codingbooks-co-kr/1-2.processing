// 본문 코드: 마우스를 누르면 생성되고 서서히 소멸되는 원 객체

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
    if (c.melt()) {
      circles.remove(i);
    }
  }
  println(circles.size());
}

void mousePressed() {
  circles.add(new Circle(mouseX, mouseY));
}

// Circle 클래스 코드

class Circle {
  PVector location;
  color col;
  float d, alpha;

  Circle(float x, float y) {
    location = new PVector(x, y);
    col = color(random(255), random(255), random(255));
    d = 30;
    alpha = 255;
  }

  void display() {
    stroke(col, alpha);
    fill(col, alpha);
    ellipse(location.x, location.y, d, d);
  }

  void move() {
    location.add(random(-2, 2), random(-2, 2));
  }

  boolean melt() {
    alpha--;
    if (alpha < 0) {
      return true;
    } else {
      return false;
    }
  }
}
