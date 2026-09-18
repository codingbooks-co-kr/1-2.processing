// else문 안에 if-else문 포함

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  if (mouseY < height/3) {
    rect(0, 0, width, height/3);
  } else {
    if (mouseY < height*2/3) {
      rect(0, height/3, width, height/3);
    } else {
      rect(0, height*2/3, width, height/3);
    }
  }
}
