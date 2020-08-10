/*
simple class Balloon have 1 method is create_balloon when use this method program will spawn a balloon 
*/
class Balloon{
  float x;      //x-coordinate of balloon
  float y;      //y-coordinate of balloon
  float wide;   //width of balloon
  float high;   //height of balloon
  int bottomScreen;
  
  Balloon(float x, float y, float wide, float high, int bottomScreen){
    this.x = x;
    this.y = y;
    this.wide = wide;
    this.high = high;
    this.bottomScreen = bottomScreen;
  }
  
  void create_balloon(){
    circle(this.x, this.y, this.wide);    //create part circle of balloon
    line(this.x, this.y+(this.wide/2), this.x, (this.y-(this.wide/2))+this.high);    //create part line of balloon
  }
  
  void fly(){
    if(mousePressed){
      this.y = this.y;
    }
    else{
      if(this.y > -this.high){
        delay(40);
        this.y -= 1;
        this.x += random(-2, 2);
      }
      else{
        this.y = this.bottomScreen+(this.wide/2);
      }
    }
    this.create_balloon();
  }
}
 
Balloon b1 = new Balloon(150, 100, 70, 200, 300);
void setup(){
  size(300, 300);
}
void draw(){
  background(255, 255, 255);
  b1.fly();
}
