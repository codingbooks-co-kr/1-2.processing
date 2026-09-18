// 방향키로 원을 상하좌우로 이동

int x = 150, y = 150;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (keyPressed) {
    if (keyCode == LEFT) {
      x--;
    } else if (keyCode == RIGHT) {
      x++;
    } else if (keyCode == UP) {
      y--;
    } else if (keyCode == DOWN) {
      y++;
    }
  }
  ellipse(x, y, 100, 100);
}
