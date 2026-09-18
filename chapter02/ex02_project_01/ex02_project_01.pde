// 선, 원, 사각형 및 문자열을 사용하여 자유롭게 표현

size(400, 400);
background(0);

// 선과 색상 표현
stroke(255, 0, 0); 
line(0, 0, 400, 400);
line(400, 0, 0, 400);

// 원과 색상 표현
strokeWeight(10);
stroke(0, 255, 0); 
noFill();
ellipse(200, 200, 150, 150);

// 사각형과 색상 표현
strokeWeight(20);
stroke(0, 0, 255); 
noFill();
rectMode(CENTER);
rect(200, 200, 300, 300);

// 문자열과 색상 표현
fill(255, 255, 0);
textSize(30);
textAlign(CENTER);
text("Hello, Processing!", 200, 200);
