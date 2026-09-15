// 본서에서 사용하는 마찰율
PVector velocity = new PVector(10, 20);
float friction = 0.98;
velocity.mult(friction);
println(velocity.x, velocity.y);
