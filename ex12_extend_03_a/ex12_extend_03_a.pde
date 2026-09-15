// 값에 의한 호출(call by value)

void setup() {
  size(300, 300);
}

void draw() {
  int value = display(255);
  println(value);
}

int display(int x) {
  background(x, 0, 0);
  return x;
}
