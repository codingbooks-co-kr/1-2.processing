// 본문 코드: 

int num = 5;
Circle[] c = new Circle[num];

void setup() {
  size(500, 500); 
  for (int i = 0; i < num; i++) {
    c[i] = new Circle(width/2, height/2);
  }
}

void draw() {
  // 페이딩 효과
  noStroke();  
  fill(0, 10);  
  rect(0, 0, width, height);

  for (int i = 0; i < num; i++) {
    c[i].display();
    c[i].move();
    c[i].bounce();
  }
}

void mousePressed() {
  c[0].location.x = mouseX;
  c[0].location.y = mouseY;
}

// 클래스 코드

class Circle {
  PVector location, velocity;
  color col;
  float d;

  Circle(float x, float y) {
    location = new PVector(x, y);
    velocity = new PVector(random(-5, 5), random(-5, 5));
    col = color(255);
    d = 30;
  }

  void display() {
    fill(col);
    ellipse(location.x, location.y, d, d);
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
