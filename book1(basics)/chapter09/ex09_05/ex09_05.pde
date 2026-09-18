// 배열과 반복문을 사용하여 세 개의 원을 오른쪽으로 이동

int[] x = {-50, 0, 50};

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int i = 0; i < 3; i++) {
    ellipse(x[i], (80*i)+80, 50, 50);
    x[i]++;
  }
}
