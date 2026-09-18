// 사각형을 누를 때마다 문자의 이동과 정지를 제어

char c = 'a';
boolean check = false;
int xx = 0, velocity = 1, x = 200, y = 200, w = 100, h = 50;

void setup() {
  size(500, 300);
}

void draw() {
  background(0);
  if (xx < 0 || xx > width) {
    velocity *= -1;
  }
  if (check) {
    xx += velocity;
  } 
  fill(255, 255, 0);
  textSize(70);
  text(c, xx, 100);
  rect(x, y, w, h);
}

void mousePressed() {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h)
    check = !check;
}
