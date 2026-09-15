char c = 'A';
int x = 2, y = 3;
float f = 3.5;

println( x / y );    // 2/3 = 0
println( x / (float)y );    // 2/(float)3=2/3.0=2.0/3.0=0.6666667
println( x + (int)f );   // 2+(int)3.5 = 2+3 = 5
println( (int)c );   // 'A'의 유니코드 정수값 = 65
println( (char)44608 );   // 44608의 유니코드 문자 = '김'
