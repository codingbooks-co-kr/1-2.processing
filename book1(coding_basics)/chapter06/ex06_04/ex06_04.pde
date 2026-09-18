// 마우스가 원 안에 들어오면 원의 색상 변경

float d, r = 100.0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  d = dist(width/2, height/2, mouseX, mouseY);
  if (d < r) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 255);
  }
  ellipse(width/2, height/2, r*2, r*2);
  println(d);
}
