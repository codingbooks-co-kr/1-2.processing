// 마우스를 누를 때마다 구성 문자별로 랜덤하게 이동, 임의의 키를 누르면 초기 위치로 돌아옴

PFont font;
String s = "안녕,프로세싱!";
float[] x, y;

void setup() {
  size(400, 200);
  font = createFont("굴림체", 50);
  textFont(font);
  printArray(PFont.list());

  x = new float[s.length()];
  y = new float[s.length()];
  for (int i = 0; i < s.length(); i++) { 
    x[i] = i * 50;
    y[i] = height / 2;
  }
}

void draw() {
  background(0);
  for (int i = 0; i < s.length(); i++) {  
    text(s.charAt(i), x[i], y[i]);
  }
}

void mousePressed() {
  for (int i = 0; i < s.length(); i++) {
    x[i] += random(-10, 10);
    y[i] += random(-10, 10);
  }
}

void keyPressed() {
  for (int i = 0; i < s.length(); i++) {
    x[i] = i * 50;
    y[i] = height / 2;
  }
}
