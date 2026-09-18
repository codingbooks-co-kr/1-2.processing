// 배열과 반복문을 사용하여 여섯 개의 막대 그래프 그리기

int[] value = {50, 100, 150, 200, 250, 300};

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int i = 0; i < 6; i++) {
    fill(255, 255, i*50);
    rect(i*50, height-value[i], 40, value[i]);
  }
}
