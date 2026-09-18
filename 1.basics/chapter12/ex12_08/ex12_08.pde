// 스페이스키를 누를 때마다 랜덤한 색상과 위치를 가진 원이 생성 또는 정지

boolean check = false;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (check) {
    fill(random(255), random(255), random(255), 200);
    ellipse(random(width), random(height), 30, 30);
  }
}

void keyPressed() {
  if (key == ' ') {
    check = !check;
  }
}
