// 동일 클래스에서 생성된 객체들이 공유하는 static 필드

void setup() {
  Test.x += 10;
  Test t1 = new Test();
  Test t2 = new Test();
  println(t1.x, t2.x);
  t1.y += 10;
  println(t1.y, t2.y);
}

static class Test {
  static int x = 5;
  int y = 10;
}
