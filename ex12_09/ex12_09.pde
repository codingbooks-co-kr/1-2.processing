// 1을 누르면 빨간색 원, 2를 누르면 녹색 사각형이 마우스를 따라 움직임, 3을 누르면 삭제

int choice = 1;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (choice == 1) {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 50, 50);
  } else if (choice == 2) {
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(mouseX, mouseY, 50, 50);
  }
}

void keyPressed() {
  if (key == '1') {
    choice = 1;
  } else if (key == '2') {
    choice = 2;
  } else if (key == '3') {
    background(0);
  }
}
