// 자동 초기화

Test t;

void setup() {
  t = new Test();
  println(t.i, t.f, t.c, t.b, t.s);
}

class Test {
  int i;
  float f;
  char c;
  boolean b;
  String s;
}
