// 마우스가 원 내부인지 외부인지에 따라 배경색 변경

float r = 100.0;

void setup() {
  size(300, 300);
}

void draw() {
  if (check()) {
    background(255, 0, 0);
  } else {
    background(0);
  }
  ellipse(width/2, height/2, r*2, r*2);
}

boolean check() {
  float d = dist(width/2, height/2, mouseX, mouseY);
  if (d < r) {
    return true;
  } else {
    return false;
  }
}
