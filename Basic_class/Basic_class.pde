/* class form
---------------------------------------------------
class className{
  classAttribute;
  
  construc ex. Test(parameter){
                }
  typeMethod methodName(parameter){
    body;
  }
}

className variable = new className();
variable.methodName(argument);

-----------------------------------------------------*/
class Test {
   String text;
   
   Test(String text){
     this.text = text;
   }
   
   void show_text() {
     print(this.text);
   }

}

Test t1 = new Test("Hello");
void setup(){
  t1.show_text();
}
