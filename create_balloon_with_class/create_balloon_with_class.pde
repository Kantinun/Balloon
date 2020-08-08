/*
simple class Balloon have 1 method is create_balloon when use this method program will spawn a balloon 
*/
class Balloon{
  float x;      //x-coordinate of balloon
  float y;      //y-coordinate of balloon
  float wide;   //width of balloon
  float high;   //height of balloon
  
  Balloon(float x, float y, float wide, float high){
    this.x = x;
    this.y = y;
    this.wide = wide;
    this.high = high;
  }
  
  void create_balloon(){
    circle(this.x, this.y, this.wide);    //create part circle of balloon
    line(this.x, this.y+(this.wide/2), this.x, (this.y-(this.wide/2))+this.high);    //create part line of balloon
  }
}
void setup(){
  size(300, 300);
  Balloon b1 = new Balloon(150, 100, 70, 200);
  b1.create_balloon();
}
