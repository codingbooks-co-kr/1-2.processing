// 배열을 전역변수로 선언
int[] i;
float[] f;
char[] c;
boolean[] b;
String[] s;

void setup() {
  // 배열 생성 전 배열 값 확인
  printArray(i);
  printArray(f);
  printArray(c);
  printArray(b);
  printArray(s);

  i = new int[3];
  f = new float[3];
  c = new char[3];
  b = new boolean[3];
  s = new String[3];

  // 배열 생성 후 배열 값 확인
  printArray(i);
  printArray(f);
  printArray(c);
  printArray(b);
  printArray(s);
}
