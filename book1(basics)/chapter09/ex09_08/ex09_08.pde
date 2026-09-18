// 다섯 개의 원을 대각선 방향으로 이동

int[] x = new int[5];
int[] y = new int[5];

void setup() {
  size(300, 300);
  for (int i = 0; i < 5; i++) {
    x[i] = i * width / 5;
    y[i] = i * height / 5;
  }
}

void draw() {
  background(0);
  for (int i = 0; i < 5; i++) {
    ellipse(x[i], y[i], 30, 30);
    x[i]++;
    y[i]++;
  }
}
