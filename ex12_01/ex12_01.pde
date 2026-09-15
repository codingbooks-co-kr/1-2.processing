// 마우스 및 키보드의 이벤트 함수

String s = "";    // 문자열 변수의 선언 및 “빈 문자열”로 초기화

void setup() {
  size(600, 200);
}

void draw() {
  background(0);
  textSize(30);
  text(s, 10, height/2);
}

void mousePressed() {
  s = "mousePressed x: " + mouseX + " y: " + mouseY;
}

void mouseReleased() {
  s = "mouseReleased x: " + mouseX + " y: " + mouseY;
}

void mouseMoved() {
  s = "mouseMoved x: " + mouseX + " y: " + mouseY;
}

void mouseDragged() {
  s = "mouseDragged x: " + mouseX + " y: " + mouseY;
}

void keyPressed() {
  s = "keyPressed key: " + int(key) + " keyCode: " + keyCode;
}

void keyReleased() {
  s = "keyReleased key: " + int(key) + " keyCode: " + keyCode;
}
