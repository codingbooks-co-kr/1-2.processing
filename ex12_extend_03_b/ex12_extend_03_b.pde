// 참조에 의한 호출(call by reference)

int[] c = {255, 0, 0};

void setup() {
  size(300, 300);
}

void draw() {
  int[] reference = display(c);
  printArray(reference);
}

int[] display(int[] col) {
  background(col[0], col[1], col[2]);
  return col;
}
