// 전역·지역 변수 사용

// 전역변수
int s = 0, r = 10;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  // 지역변수
  int s = 150;
  rectMode(CENTER);
  rect(s, s, r, r);
  r++;
}
