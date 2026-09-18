// 세 개의 문자열이 1초 간격으로 차례로 표시

String[] c = {"Kim", "Lee", "Park"};
int index = 0;

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  fill(255, 255, 0);
  textSize(50);
  textAlign(CENTER);
  text(c[index], width/2, height/2);
  if (frameCount % 60 == 0) {
    index++;
    if (index == 3) {
      index = 0;
    }
  }
}
