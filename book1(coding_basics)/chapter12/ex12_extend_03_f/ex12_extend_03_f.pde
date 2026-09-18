// 유형4: 오른쪽 이동하는 숫자 배열

int num = 10;
float[] x = new float[num];
float[] y = new float[num];

void setup() {
  size(500, 300);
  for (int i = 0; i < num; i++) {
    x[i] = random(-300, 0);
    y[i] = random(0, height);
  }
}

void draw() {
  background(0);
  float[] xpos = move(x, y);
  printArray(xpos);
}

float[] move(float[] xx, float[] yy) {
  for (int i = 0; i < num; i++) {
    textSize(30);
    text(i, xx[i], yy[i]);
    xx[i]++;
  }
  return xx;
}
