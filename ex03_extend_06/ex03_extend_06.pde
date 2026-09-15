PFont font;
char c = '가';
String s = "안녕, 프로세싱!";
int x = 50, y = 50;

size(300, 200);
font = createFont("굴림체", 30);
textFont(font);
println(PFont.list());
fill(255, 0, 0);
text(c, x, y);
text(s, x, y*2); 
text(s, x, y*3);
