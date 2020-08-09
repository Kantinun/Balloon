/*
---------------------------------------------------
Basic Function
---------------------------------------------------
function form
returnType functionName(parameter){
  body;
}
---------------------------------------------------
form to call function
--------------------------------------------------
functionName(argument);
--------------------------------------------------
example returnType -> int, float, static, void 
--------------------------------------------------
*/
//Example
void hello(){
  print("hello"+"\n");
}
int sum(int a, int b){
  return a+b;
}
void setup(){
  hello();
  print(sum(5,5)+"\n");
}
