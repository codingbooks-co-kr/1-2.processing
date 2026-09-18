// 원 세 개의 상하 진동

float theta = 0.0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  float y1 = height/2 + height/2 * sin(theta);
  float y2 = height/2 + height/2 * sin(theta + PI/4);
  float y3 = height/2 + height/2 * sin(theta + PI/2);
  stroke(255);
  line(50, 0, 50, y1);
  line(150, 0, 150, y2);
  line(250, 0, 250, y3);
  ellipse(50, y1, 30, 30);
  ellipse(150, y2, 30, 30);
  ellipse(250, y3, 30, 30);
  theta += 0.1;
}
