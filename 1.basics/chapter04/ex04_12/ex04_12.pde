// random() 함수 및 constrain() 함수를 사용하여 선의 불규칙한 움직임을 구현

int n = 0;

void setup() {
  size(300, 300);
  background(0);
}

void draw() {
  stroke(random(255), random(255), random(255));
  line(0, n, n, height);
  n += random(-50, 50);
  n = constrain(n, 0, height);
}
