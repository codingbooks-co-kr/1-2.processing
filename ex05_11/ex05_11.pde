// 마우스를 좌우로 움직일 때 마우스의 x축 위치까지 따라오는 원

int x = 150;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  stroke(255); 
  line(mouseX, 0, mouseX, height); 
  ellipse(x, height/2, 50, 50);
  if (mouseX > x) {
    x++;
  } else {
    x--;
  }
}
