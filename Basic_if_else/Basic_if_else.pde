/*  form if
    if(condition){
      body;
    }
------------------------------------------    
    form if-else
    if(condition){
      body1;
    }else{
      body2
    }
------------------------------------------    
    form if-elseif
    if (condition1){
      body1;
    }else if(condition2){
      body2;
    }                                           
------------------------------------------         */
int input = 10;
void setup(){
  if (input == 10){
    print("Condition if is True"+"\n");
  }
  if (input == 20){
    print("Condition if-else is True"+"\n");
  }else{
    print("Condition if-else is Fasle"+"\n");
  }
  if(input == 30){
    print("Condition if-elseif is True");
  }else if(input % 2 == 0){
    print("Condition elseif is True"+"\n");    
  }
}
