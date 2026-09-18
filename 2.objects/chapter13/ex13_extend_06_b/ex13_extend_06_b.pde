// 비추천: draw() 함수에서 배열과 객체 생성

int[] i;
Circle c;

void setup() {
}

void draw() {
  i = new int[3];
  c = new Circle();
  printArray(i);
  printArray(c);
}

class Circle {
}
