// 이미지가 점점 커지는 것을 반복

PImage img;
int r = 10;

void setup() {
  size(500, 500);
  img = loadImage("flower.jpg");
}

void draw() {
  background(0);
  imageMode(CENTER);
  image(img, width/2, height/2, r, r);
  r++;
  if (r > width) {
    r = 10;
  }
}
