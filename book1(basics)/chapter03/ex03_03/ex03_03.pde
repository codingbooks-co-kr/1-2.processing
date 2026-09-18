// 다양한 원 그리기
int x = 100, y = 100, d = 80;

size(300, 300);
noFill();
ellipse(x%30, y%30, d%30, d%30);
ellipse(x/2, y/2, d/2, d/2);
ellipse(x-30, y-30, d-30, d-30);
ellipse(x, y, d, d);
ellipse(x+30, y+30, d+30, d+30);
ellipse(x*2, y*2, d*2, d*2);
