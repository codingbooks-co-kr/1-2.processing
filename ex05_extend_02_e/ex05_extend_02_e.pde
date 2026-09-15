// ❸ 컴파일 오류

int x = 0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  ellipse(x, height/2, 30, 30);
  x += velocity;
  if(x > width) {
    int velocity = 1;
    velocity *= -1;
  }
}
