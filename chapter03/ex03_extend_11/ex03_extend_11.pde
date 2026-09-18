int x;
x = 1;
println("x = " + x++);   // 결과: x = 1 (선 처리 후 증가)
println("x = " + x);        // 결과: x = 2
x = 1;
println("x = " + ++x);    // 결과: x = 2 (선 증가 후 처리)
println("x = " + x);        // 결과: x = 2
