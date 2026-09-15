// 다섯 개의 원이 상하로 사인 진동하고 속도는 마우스로 조절

float theta = 0.0;
float[] y = new float[5];

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  float velocity = map(mouseX, 0, width, 0, 0.02);
  for (int i = 0; i < 5; i++) {
    float x = 30.0 + 60.0 * i;
    y[i] = height/2 + 100.0 * sin(theta + i*0.5);
    stroke(255);
    line(x, 0, x, y[i]);
    ellipse(x, y[i], 60, 60);
    theta += velocity;
  }
}
