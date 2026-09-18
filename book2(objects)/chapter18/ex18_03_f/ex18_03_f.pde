// 실제 마찰율
PVector velocity = new PVector(10, 20);
float friction = 0.02;
velocity.mult(1-friction);
println(velocity.x, velocity.y);
