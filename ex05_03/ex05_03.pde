// 좌우 반사하는 선과 조건에 따라 점멸하는 원

int x = 0, velocity = 1;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  stroke(255);
  line(x, 0, x, height);
  x += velocity;
  if (x < 0 || x > width) {
    velocity *= -1;
  }
  if (x < 100 || x > 200) {
    ellipse(width/2, height/2, 100, 100);
  }
}
