// 본문 코드

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
    c.display(i);
    c.move();
    c.bounce();
  }
  if (circles.size() > 5) {
    circles.remove(0);
  }
  println(circles.size());
}

void mousePressed() {
  Circle c = new Circle(mouseX, mouseY);
  circles.add(c);
}

// 클래스 코드

class Circle {
  PVector location, velocity;
  color col;
  float d;

  Circle(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(random(-5, 5), random(-5, 5));
    col = color(random(255), random(255), random(255));
    d = 30;
  }

  void display(int index) {
    fill(col);
    textSize(d);
    text(index, location.x, location.y);
  }

  void move() {
    location.add(velocity);
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
