// 원 그리기2 (프로세싱 코드)
// ex16_extend_01_c.pde

Circle c;

void setup() {
  size(300, 300);
  c = new Circle(width/2, height/2, 200);
}

void draw() {
  background(0);
  c.display();
}

class Circle { 
  float x, y, d;

  Circle(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }

  void display() {
    ellipse(x, y, d, d);
  }
}
