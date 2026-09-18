// 지역변수만 사용

void setup() {
  size(300, 300);
}

void draw() {
  background(0);

  // 지역변수
  int s = 150, r = 10;
  rectMode(CENTER);
  rect(s, s, r, r);
  // 증가하지 않음 
  r++;
}
