// 마우스로 원을 끌어 놓기 (클래스 및 PVector 사용)

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
}

void mousePressed() {
  c.check(mouseX, mouseY);
}

void mouseReleased() { 
  c.choice = false;
}

void mouseDragged() {
  c.move();
}

class Circle {
  PVector location;
  boolean choice;
  float r;
  color col;

  Circle() {
    location = new PVector(width/2, height/2);
    choice = false;
    r = 30;
    col = color(random(255), random(255), random(255));
  }

  void display() {
    fill(col);
    ellipse(location.x, location.y, r*2, r*2);
  }

  void move() {
    if (choice) {
      PVector mouse = new PVector(mouseX, mouseY);
      PVector pmouse = new PVector(pmouseX, pmouseY);
      PVector offset = PVector.sub(mouse, pmouse);
      location.add(offset);
    }
  }

  void check(float x, float y) {
    float d = dist(x, y, location.x, location.y);
    if (d < r) {
      choice = true;
    }
  }
}
