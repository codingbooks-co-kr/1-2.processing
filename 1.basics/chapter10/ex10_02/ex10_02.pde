// 오른쪽으로 이동하는 10개의 원 (마우스가 원 안에 들어가면 원 색상 변경)
int num = 10;
float[] x = new float[num];
float[] y = new float[num];
float[] r = new float[num];

void setup() {
  size(500, 300);
  for (int i = 0; i < num; i++) {
    x[i] = random(-500, 0);
    y[i] = random(height);
    r[i] = random(10, 30);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < num; i++) {
    float d = dist(x[i], y[i], mouseX, mouseY);
    if (d < r[i]) {
      fill(255, 0, 0);
    } else {
      fill(0, 255, 0);
    }
    ellipse(x[i], y[i], r[i]*2, r[i]*2);
    x[i]++;
  }
}
