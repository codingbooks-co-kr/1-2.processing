// 다섯 개의 원 좌우 반사 (클래스에 기반한 객체 배열을 사용한 예) 

Circle[] c = new Circle[5];

void setup() {
  size(500, 500);
  for (int i = 0; i < c.length; i++) { 
    color col = color(random(255), random(255), random(255));
    c[i] = new Circle(col, random(width), random(height), random(20, 60), random(-3, 3));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < c.length; i++) { 
    c[i].display();
    c[i].move();
  }
}

// 클래스 코드

class Circle {
  color col;
  float x, y, d, velocity;

  Circle(color col, float x, float y, float d, float velocity) {  // 원의 속성 초기화
    this.col = col;
    this.x = x;
    this.y = y;
    this.d = d;
    this.velocity = velocity;
  }

  void display() {
    fill(col);
    ellipse(x, y, d, d);
  }

  void move() {
    x += velocity;
    if (x < 0 || x > width) {
      velocity *= -1;
    }
  }
}
