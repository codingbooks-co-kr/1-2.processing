// 이미지 객체를 생성 후 마우스를 따라 움직이기

PImage img;

void setup() {
  size(500, 500);
  img = loadImage("flower.jpg");
}

void draw() {
  background(0);
  imageMode(CENTER);
  image(img, mouseX, mouseY);
}
