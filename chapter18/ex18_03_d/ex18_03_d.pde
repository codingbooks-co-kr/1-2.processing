// PVector 클래스 사용
// 변수 곱을 사용한 마찰 표현
PVector velocity = new PVector(10, 20);
float friction = 0.98;
velocity.mult(friction);
println(velocity.x, velocity.y);
