// 명시적 초기화와 생성자 초기화를 같이 사용한 경우

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

  Test() {
    i = 10;
    f = 20.5;
    c = 'B';
    b = false;
    s = "Hello";
  }
}
