// 특정 문자키로 원을 상하좌우로 이동

int x = 150, y = 150;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  if (keyPressed) {
    if (key == 'q') {
      x--;
    } else if (key == 'w') {
      x++;  
    } else if (key == 'e') {
      y--;  
    } else if (key == 'r') {
      y++;
    }
  }
  ellipse(x, y, 100, 100);
}
