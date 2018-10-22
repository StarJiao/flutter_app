void main(){
  var names = ["hello","world"];
  for(var name in names){
    print(name);
  }
  print(add(3,7));

  List<String> strs = new List();
  strs.add("sdfas");
  strs.add("hello");
  strs.add("world");

  for(String string in strs){
    print(string);
  }
}


int add(int a,int b){
return a+b;
}

