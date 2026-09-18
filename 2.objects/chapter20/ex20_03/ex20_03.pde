// 서로 다른 이미지 객체 두 개를 출력

PImage img1, img2;

void setup(){
  size(500, 500);
  img1 = loadImage("flower.jpg");
  img2 = loadImage("nature2.jpg"); 
}

void draw(){
  background(0);
  image(img1, 100, 30);
  image(img2, 100, 250);
}
