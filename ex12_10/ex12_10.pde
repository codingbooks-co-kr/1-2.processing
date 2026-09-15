// 마우스를 움직이면 원이 따라오고 드래그하면 사각형이 따라옴

boolean check = false;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  if (check) {
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 30, 30);
  } else {
    fill(0, 255, 0);
    rectMode(CENTER);
    rect(mouseX, mouseY, 30, 30);
  }
}

void mouseMoved() {
  check = true;
}

void mouseDragged() {
  check = false;
}
