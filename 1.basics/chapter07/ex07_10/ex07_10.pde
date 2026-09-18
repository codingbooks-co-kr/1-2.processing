// 원으로 움직이는 사인 파형의 궤적 만들기

float theta = 0.0, angle = 0.0;

void setup() {
  size(500, 200);
}

void draw() {
  background(0);
  theta = angle;
  for (float x = 0; x <= width; x += 10) {
    float y = height/2 + 100 * sin(theta);
    ellipse(x, y, 30, 30);
    theta += 0.2;
  }
  angle += 0.01;
}
