// 영대문자 배열을 랜덤 생성하고 대각선 방향으로 이동

int num = 5;

float[] x = new float[num];
float[] y = new float[num];
char[] c = new char[num];

void setup() {
  size(300, 300);
  for (int i = 0; i < num; i++) {
    x[i] = random(-100, 100);
    y[i] = random(-100, 100);
    c[i] = (char)random('A', 'Z'+1);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < num; i++) {
    textSize(50);
    text(c[i], x[i], y[i]);
    x[i]++;
    y[i]++;
  }
}
