// 실행 화면의 좌우 위치에 따라 마우스를 누를 때 원의 크기가 달라짐

float r = 150.0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (mousePressed) {
    if (mouseX > width/2) {
      r++;
    } else {
      r--;
    }
  }
  ellipse(width/2, height/2, r, r);
  stroke(255, 0, 0);
  line(width/2, 0, width/2, height);
  r = constrain(r, 20, width);
}
