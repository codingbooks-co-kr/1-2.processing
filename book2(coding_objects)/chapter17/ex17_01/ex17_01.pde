// "processing"을 입력할 때만 입력 문자열이 랜덤하게 떨림

String s = "";
float x = 250, y = 250;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  textSize(50);
  textAlign(CENTER);
  text("Type processing", width/2, 50);
  if (s.equals("processing")) {
    x += random(-2, 2);
    y += random(-2, 2);
    text(s, x, y);
  } else {
    text(s, width/2, height/2);
  }
}

void keyPressed() {
  if (key == ENTER) {    // 엔터키를 입력하면
    s = "";        // 문자열 삭제
  } else {
    s += key;    // 문자열 누적
  }
}
