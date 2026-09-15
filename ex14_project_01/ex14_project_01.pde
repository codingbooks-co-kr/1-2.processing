// 본문 코드: 세 개의 사각형 객체 중 하나를 마우스로 선택하면 원의 크기가 변경

Square[] s = new Square[3];
float size = 100;

void setup() { 
  size(500, 500);
  for (int i = 0; i < s.length; i++) { 
    s[i] = new Square(110*(i+1), 100, 50);
  }
} 

void draw() { 
  background(0);
  fill(0, 0, 255);
  ellipse(width/2, height/2, size, size);

  for (int i = 0; i < s.length; i++) { 
    if (s[i].check(mouseX, mouseY)) {
      fill(255, 0, 0);
      size = 200*(i+1);
    } else {
      fill(255, 255, 0);
    }
    s[i].display();
  }
}

// Square 클래스 코드

class Square {
  float x, y, d;

  Square(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }

  void display() {
    rect(x, y, d, d);
  }

  boolean check(int x, int y) {
    if ((x > this.x) && (x < this.x+d) && (y > this.y) && (y < this.y+d)) {
      return true;
    } else {
      return false;
    }
  }
}
