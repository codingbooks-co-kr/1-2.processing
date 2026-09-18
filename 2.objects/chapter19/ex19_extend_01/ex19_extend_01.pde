ArrayList<String> list = new ArrayList<String>();

list.add("kim");      // 0번 배열 요소에 "kim" 추가
list.add("lee");      // 1번 배열 요소에 "lee" 추가
list.add("park");      // 2번 배열 요소에 "park" 추가
list.add("choe");      // 3번 배열 요소에 "choe" 추가
list.add("jung");      // 4번 배열 요소에 "jung" 추가
println(list);

list.add(2, "kong");    // 2번 배열 요소에 "kong" 추가
println(list);

list.set(2, "gong");
println(list);

int num = list.indexOf("gong");
println(num);

list.remove("gong");
println(list);

for (int i = 0; i < list.size(); i++) {
  String search = "park";
  String name = list.get(i);
  if (search.equals(name)) {
    list.remove(i);
  }
} 
println(list);

list.clear();
println(list);

if (list.isEmpty()) {
  println("Empty");
}
