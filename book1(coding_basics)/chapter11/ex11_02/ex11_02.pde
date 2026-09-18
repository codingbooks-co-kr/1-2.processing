// 랜덤한 위치와 색상으로 원 생성

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  display();
}

void display() {
  fill(random(255), random(255), random(255), 200);
  ellipse(random(width), random(height), 50, 50);
}
