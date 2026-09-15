// 배열 미사용

int x1, x2, x3;

void setup() {
  size(300, 300);
  x1 = -50;
  x2 = 0;
  x3 = 50;
}

void draw() {
  background(0);
  ellipse(x1, 80, 50, 50);
  ellipse(x2, 160, 50, 50);
  ellipse(x3, 240, 50, 50);
  x1++;
  x2++;
  x3++;
}
