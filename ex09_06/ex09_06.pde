// 배열과 반복문을 사용하여 세 개의 문자를 오른쪽으로 이동

char[] c = {'a', 'b', 'c'};
int[] x = {-50, 0, 50};

void setup() {
  size(500, 300);
}

void draw() {
  background(0);
  textSize(50);
  for (int i = 0; i < 3; i++) {
    text(c[i], x[i], (80*i)+80);
    x[i]++;
  }
}
