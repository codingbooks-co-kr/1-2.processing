// 원 배열요소 10개를 랜덤하게 생성하여 대각선 방향으로 이동

int num = 10;
float[] x = new float[num];
float[] y = new float[num];

void setup() {
  size(500, 500);
  for (int i = 0; i < num; i++) {
    x[i] = random(-300, 0);
    y[i] = random(-300, 0);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < num; i++) {
    display(x[i], y[i]);
    x[i]++;
    y[i]++;
  }
}

void display(float x, float y) {
  fill(255);
  ellipse(x, y, 30, 30);
}
