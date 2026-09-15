// 마우스를 누르면 이미지 객체 배열에 저장된 이미지가 랜덤한 순서로 출력

PImage [] imgs = new PImage[3];
int num = 0;

void setup() {
  size(500, 300);
  // 배열에 이미지 객체를 일괄 저장
  String[] filenames = {"nature0.jpg", "nature1.jpg", "nature2.jpg"};
  for (int i = 0; i < imgs.length; i++) {
    imgs[i] = loadImage(filenames[i]);
  }
}

void draw() {
  image(imgs[num], 0, 0, width, height);
  textSize(30);
  text("Press the mouse!", mouseX, mouseY);
}

void mousePressed() {
  num = int(random(0, imgs.length));
  println(num);
}
