// 세 개의 문자를 오른쪽으로 이동

int x = 0;
char[] c = {'a', 'b', 'c'};

void setup() {
  size(300, 300);
}

void draw() {
  background(0);
  textSize(50);
  text(c[0], x, 80);
  text(c[1], x, 160);
  text(c[2], x, 240);
  x++;
}
