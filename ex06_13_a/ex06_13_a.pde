// 세 개의 문자(a, b, c)를 입력 및 출력1

void setup() {
  size(300, 300);
  textSize(100);
  textAlign(CENTER);
}

void draw() {
  background(0);
  if (key == 'a') {
    text('a', width/2, height/2);
  } else if (key == 'b') {
    text('b', width/2, height/2);
  } else if (key == 'c') {
    text('c', width/2, height/2);
  } else {
    text("None", width/2, height/2);
  }
}
