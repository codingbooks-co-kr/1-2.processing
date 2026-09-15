// 세 개의 문자(a, b, c)를 입력 및 출력2

void setup() {
  size(300, 300);
  textSize(100);
  textAlign(CENTER);
}

void draw() {
  background(0);
  switch(key) {
  case 'a':
    text('a', width/2, height/2);
    break;
  case 'b':
    text('b', width/2, height/2);
    break;
  case 'c':
    text('c', width/2, height/2);
    break;
  default:
    text("None", width/2, height/2);
    break;
  }
}
