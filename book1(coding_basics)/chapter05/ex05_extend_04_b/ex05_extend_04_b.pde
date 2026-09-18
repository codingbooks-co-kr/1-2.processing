// 불필요한 조건이 붙은 조건문
// 원 좌우 반사

int x = 0, velocity = 1;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(x, height/2, 30, 30);
  x += velocity;
  if (x < 0 || x > width) {
    velocity *= -1;
  }
  if (x < width/4) {
    fill(255, 0, 0);
  } else if (x >= width/4 && x < width*2/4) {
    fill(0, 255, 0);
  } else if (x >= width*2/4 && x < width*3/4) {
    fill(0, 0, 255);
  } else {
    fill(255, 255, 0);
  }
}
