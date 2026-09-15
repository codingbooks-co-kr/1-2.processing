// 원 그리기2 (자바 코드)
// ex16_extend_01_d.pde

import processing.core.PApplet;

// 외부 클래스
public class ex16_extend_01_d extends PApplet {
  Circle c;

  public void settings() {  
    size(300, 300);
  }

  public void setup() {
    c = new Circle(width/2, height/2, 200);
  }

  public void draw() {
    background(0);
    c.display();
  }

  // 내부 클래스
  class Circle { 
    float x, y, d;

    Circle(float x, float y, float d) {
      this.x = x;
      this.y = y;
      this.d = d;
    }

    public void display() {
      ellipse(x, y, d, d);
    }
  }

  public static void main(String[] args) {
    PApplet.main("ex16_extend_01_d");
  }
}
