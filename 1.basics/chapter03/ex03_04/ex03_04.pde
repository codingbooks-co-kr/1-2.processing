// 가로선 그리기

float x1 = 50.5, x2 = 250.5, y = 100.5;

size(300, 300);
line(x1, y%30, x2, y%30);
line(x1, y/2, x2, y/2);
line(x1, y-30, x2, y-30);
line(x1, y, x2, y);
line(x1, y+30, x2, y+30);
line(x1, y*2, x2, y*2);
