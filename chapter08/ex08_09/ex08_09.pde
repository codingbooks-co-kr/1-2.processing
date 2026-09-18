// 사각형, 원 및 선의 랜덤 문양 만들기

void setup() {
  size(300, 300);
  frameRate(2);
}

void draw() {
  background(0);
  for (int y = 0; y < height; y += 60) {
    for (int x = 0; x < width; x += 60) {
      int choice = int(random(3));
      stroke(random(255), random(255), random(255));
      fill(random(255), random(255), random(255));
      if (choice == 0) {
        rect(x, y, 50, 50);
      } else if (choice == 1) {
        ellipseMode(CORNER);
        ellipse(x, y, 50, 50);
      } else {
        line(x, y, x+50, y+50);
      }
    }
  }
}
