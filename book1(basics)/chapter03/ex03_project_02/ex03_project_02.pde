// 변수를 사용하여 자전거를 움직이고 타이어 색상을 실시간으로 바꾸기

int x = 0, y = 200, c = 0, d = 100;

void setup() {
  size(700, 400);
}

void draw() {
  background(0);
  fill(255);
  textSize(30);
  text("Distance: " + x, 100, 50);
  text("Color: " + c, 400, 50);

  stroke(255, 255, 0);
  strokeWeight(5);
  line(0, y+d/2, 700, y+d/2);

  fill(c, 0, 0);
  ellipse(x, y, d, d);
  ellipse(x+d, y, d, d);

  noFill();
  triangle(x, y, x+d/2, y-d, x+d, y);

  x++;
  c++;
  x %= 700;
  c %= 255;
}
