// 두 개의 원이 상하 및 좌우 진동

float theta = 0.0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  float x = width/2 + width/2 * cos(theta);
  float y = height/2 + height/2 * sin(theta);
  ellipse(x, height/2, 30, 30);
  ellipse(width/2, y, 30, 30);
  theta += 0.1;
}
