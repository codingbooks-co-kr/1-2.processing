// (1) 무채색 표현: color(0∼255)
// (2) RGB 컬러 표현: color(R,G,B, alpha)
// 여기서 alpha(=0∼255)는 색상의 투명도

color c = color(0, 0, 0);
color c1 = color(255, 0, 0);
color c2 = color(0, 255, 0);
color c3 = color(0, 0, 255);

size(400, 200);
background(c);
fill(c1);
ellipse(100, 100, 80, 80);
fill(c2);
ellipse(200, 100, 80, 80);
fill(c3);
ellipse(300, 100, 80, 80);
