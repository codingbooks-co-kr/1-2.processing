// 전역변수만 사용

// 전역변수
int s = 150, r = 10;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  rectMode(CENTER);
  rect(s, s, r, r);
  r++;
}
