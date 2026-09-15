// 실행 화면의 왼쪽 상단의 사사분면에 랜덤한 색상과 위치에 원을 생성

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  float x = random(width/2); 
  float y = random(height/2);
  fill(random(255), random(255), random(255), 200);
  ellipse(x, y, 30, 30);
}
