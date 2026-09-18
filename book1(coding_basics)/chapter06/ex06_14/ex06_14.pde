// switch문을 사용하여 방향키로 원 이동

int x = 150, y = 150;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (keyPressed) {
    switch(keyCode) {
    case LEFT:
      x--;
      break;
    case RIGHT:
      x++;
      break;
    case UP:
      y--;
      break;
    case DOWN:
      y++;
      break;
    }
  }
  ellipse(x, y, 100, 100);
}
