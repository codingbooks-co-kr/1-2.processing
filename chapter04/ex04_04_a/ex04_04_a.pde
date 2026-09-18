// sin() 함수를 사용하여 원의 상하 진동1

float theta = 0.0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  float y = height/2 + height/2 * sin(theta);
  ellipse(width/2, y, 30, 30);
  theta += 0.1;
}
