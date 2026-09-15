// 명시적 초기화

Test t;

void setup() {
  t = new Test();
  println(t.i, t.f, t.c, t.b, t.s);
}

class Test {
  int i = 5;
  float f = 10.5;
  char c = 'A';
  boolean b = true;
  String s = "Processing";
}
