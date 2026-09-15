// mousePressed를 사용하여 마우스를 누르면 원의 색상 변경

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (mousePressed) {
    fill(255, 0, 0);
  } else {
    fill(255, 255, 255);
  }
  ellipse(width/2, height/2, 200, 200);
}
