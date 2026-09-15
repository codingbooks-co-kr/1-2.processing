// 이미지 객체를 생성 후 복수 개 출력

PImage img;
int x = 0, y = 0;

void setup() {
  size(500, 500);
  img = loadImage("flower.jpg");
}

void draw() {
  background(0);
  image(img, x, y);
  image(img, x+100, y+100);
  image(img, x+200, y+200);
}
