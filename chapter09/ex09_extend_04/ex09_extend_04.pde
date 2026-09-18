// 아스키코드를 10진수, 16진수, 문자순으로 출력
for (int i = 0; i < 128; i++) {
  println(i + " (" + hex(i, 4) + "): " +(char)i);
}
