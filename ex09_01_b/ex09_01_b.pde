// 세 개의 원을 오른쪽으로 이동 (배열 사용)

int[] x;

void setup() {
  size(300, 300);
  x = new int[3];
  x[0] = -50;
  x[1] = 0;
  x[2] = 50;
}

void draw() {
  background(0);
  ellipse(x[0], 80, 50, 50);
  ellipse(x[1], 160, 50, 50);
  ellipse(x[2], 240, 50, 50);
  x[0]++;
  x[1]++;
  x[2]++;
}
