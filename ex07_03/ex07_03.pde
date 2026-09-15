// 반지름이 점점 작아지는 원 문양 만들기

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  for (int i = 250; i >= 50; i -= 50) {
    ellipse(width/2, height/2, i, i);
  }
}
