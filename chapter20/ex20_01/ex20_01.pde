// 이미지 객체를 생성 후 출력

PImage img;

void setup() {
  size(500, 500);
  img = loadImage("flower.jpg");
}

void draw() {
  background(0);
  image(img, 0, 0);
}
