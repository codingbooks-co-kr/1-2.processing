// 화면 전체에 작은 이미지 객체를 반복 출력

PImage img;

void setup() {
  size(500, 500);
  img = loadImage("flower.jpg");
  background(0);
}

void draw() {
  for (int y = 0; y < height; y += 100) {
    for (int x = 0; x < width; x += 100) {
      image(img, x, y, 90, 90);
    }
  }
}
