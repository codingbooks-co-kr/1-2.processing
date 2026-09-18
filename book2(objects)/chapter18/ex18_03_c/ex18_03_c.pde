// PVector 클래스 미사용
// 변수 곱을 사용한 마찰 표현
float velocity_x = 10, velocity_y = 20;
float friction = 0.98;
velocity_x *= friction;
velocity_y *= friction;
println(velocity_x, velocity_y);
