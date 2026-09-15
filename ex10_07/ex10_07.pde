// 마우스를 따라 움직이는 50개의 숫자열

int num = 50; 
int[] x = new int[num];
int[] y = new int[num];

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  for (int i = 0; i < num-1; i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }
  x[num-1] = mouseX;
  y[num-1] = mouseY;
  for (int i = 0; i < num; i++) {
    fill(255, 255, 0);
    text(i, x[i], y[i]);
  }
}
