// 본문 코드: 마우스가 원 안에 들어가면 원형 링 생성  및 증가, 사각형 안에 들어가면 사각형 링 생성 및 증가

Circle c;
Square s;

void setup() {
  size(500, 500);
  c = new Circle(width/2, 200, 50);
  s = new Square(width/2, 300, 50);
}

void draw() {
  background(0);
  c.display();
  c.move();
  c.check(mouseX, mouseY);
  s.display();
  s.move();
  s.check(mouseX, mouseY);
}

// 클래스 코드

class Shape {        // 상위 클래스
  boolean on;
  color c;
  float x, y, d, dd;

  Shape(float x, float y, float d) {  // 상위 생성자
    on = false;
    c = color(255, 255, 0);
    this.x = x;
    this.y = y;
    this.d = d;
    dd = 1;
  }

  void display() {      // 상위 메소드
    fill(c);
    textSize(50);
    text("Shape", x, y);
  }

  void move() {        // 상위 메소드
    if (on) {
      dd++;
    }
  }
}

class Circle extends Shape {    // 상위 클래스 상속
  Circle(float x, float y, float d) {
    super(x, y, d);
  }

  void display() {      // 상위 메소드 오버라이딩
    fill(c);
    ellipse(x, y, d, d);
    if (on) {
      noFill();
      stroke(255, 255, 0);
      strokeWeight(3);
      ellipse(x, y, dd, dd);
    }
  }

  void check(float xx, float yy) {  // 하위 메소드
    float distance = dist(x, y, xx, yy);
    if (distance < d/2) {
      on = true;
      c = color(255, 0, 0);
    } else {
      on = false;
      c = color(255, 255, 0);
      dd = 1;
    }
  }
}

class Square extends Shape {    // 상위 클래스 상속
  Square(float x, float y, float d) {
    super(x, y, d);
  }

  void display() {      // 상위 메소드 오버라이딩
    fill(c);
    rectMode(CENTER);
    rect(x, y, d, d);
    if (on) {
      noFill();
      stroke(255, 255, 0);
      strokeWeight(3);
      rect(x, y, dd, dd);
    }
  }

  void check(float xx, float yy) {  // 하위 메소드
    if ((x-d/2 < xx) && (x+d/2 > xx) && (y-d/2 < yy) && (y+d/2 > yy)) {
      on = true;
      c = color(255, 0, 0);
    } else {
      on = false;
      c = color(255, 255, 0);
      dd = 1;
    }
  }
}
