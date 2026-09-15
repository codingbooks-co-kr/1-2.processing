// 이미지 객체를 생성 후 회전 운동

PImage img;
float theta = 0;

void setup() {
  size(500, 500);
  img = loadImage("flower.jpg");
  background(0);
}

void draw() {
  float x = width/2 + 100 * cos(theta);
  float y = height/2 + 100 * sin(theta);
  imageMode(CENTER);
  image(img, x, y);
  theta += 0.01;
}
