// 원 10개를 랜덤 생성하여 오른쪽으로 이동하고 이 중 특정 원을 추적

int num = 10;
float[] x = new float[num];
float[] y = new float[num];

void setup() {
  size(500, 500);
  for (int i = 0; i < num; i++) {
    x[i] = random(-300, 0);
    y[i] = random(0, height);
  }
}

void draw() {
  background(0);
  float xPos = move(5);      // 5번째 배열 요소의 원 추적
  println(xPos);
}

float move(int pos) {
  for (int i = 0; i < num; i++) {
    if (i == pos) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }
    ellipse(x[i], y[i], 30, 30);
    x[i]++;
  }
  return x[pos];
}
