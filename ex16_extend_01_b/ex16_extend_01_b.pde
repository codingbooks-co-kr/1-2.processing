// 원 그리기1 (자바 코드)
// ex16_extend_01_b.pde

import processing.core.PApplet;

public class ex16_extend_01_b extends PApplet {
  public void settings() {
    size(300, 300);
  }

  public void setup() {
  }

  public void draw() {
    background(0);
    ellipse(width/2, height/2, 200, 200);
  }

  public static void main(String[] args) {
    PApplet.main("ex16_extend_01_b");
  }
}
