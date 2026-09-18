// noise() 함수를 사용하여 원이 가로축으로 랜덤하지만 부드럽게 움직이도록 구현

float x, tx = 0.0;

void setup() {
  size(500, 300);
  background(0);
}

void draw() {
  x = noise(tx) * width;
  ellipse(x, height/2, 30, 30);
  tx += 0.01;
}
