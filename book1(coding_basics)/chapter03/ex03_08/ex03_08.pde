// 문자열(String) 변수를 사용하여 문자열 출력

String s = "Hello, Processing!";
int x = 70, y = 70;

size(400, 300);
fill(255, 0, 0);
textSize(30);
text(s, x, y);
text(s, x, y*2); 
text(s, y, y*3);

println(s, x, y);
println(s + x + y);
