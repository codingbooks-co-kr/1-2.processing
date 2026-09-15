// 배열에 저장된 이미지 객체가 1초마다 순서대로 출력

PImage [] imgs = new PImage[3];
int num = 0;

void setup() {
  size(500, 300);
  // 배열에 이미지 객체를 일괄 저장
  String[] filenames = {"nature0.jpg", "nature1.jpg", "nature2.jpg"};
  for (int i = 0; i < imgs.length; i++) {
    imgs[i] = loadImage(filenames[i]);
  }
  background(0);
  frameRate(1);
}

void draw() {
  num %= imgs.length;
  image(imgs[num], 0, 0, width, height);
  num++;
}
