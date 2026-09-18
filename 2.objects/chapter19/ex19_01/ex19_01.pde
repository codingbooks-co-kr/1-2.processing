// 마우스를 누를 때마다 원 요소가 하나씩 위치 이동

int num = 5, count = 0;
int[] x = new int[num];
int[] y = new int[num];

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  for (int i = 0; i < num; i++) {
    fill(255);
    ellipse(x[i], y[i], 30, 30);
  }
}

void mousePressed() {
  x[count] = mouseX;
  y[count] = mouseY;
  count++;
  if (count >= 5) {
    count = 0;
  }
}
