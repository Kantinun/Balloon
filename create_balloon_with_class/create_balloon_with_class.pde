/*
simple class Balloon have 1 method is create_balloon when use this method program will spawn a balloon 
*/
class Balloon{
  float x;      //x-coordinate of balloon
  float y;      //y-coordinate of balloon
  float wide;   //width of balloon
  float high;   //height of balloon
  int bottomScreen;
  float colorRed;
  float colorGreen;
  float colorBlue;
  float speed;
  
  Balloon(float x, float y, float wide, float high, int bottomScreen){
    this.x = x;
    this.y = y;
    this.wide = wide;
    this.high = high;
    this.bottomScreen = bottomScreen;
    this.colorRed = random(0, 255);
    this.colorGreen = random(0, 255);
    this.colorBlue = random(0, 255);
    this.speed = random(1,10); //random speed balloon
    
    
  }
  
  void create_balloon(){
    line(this.x, this.y+(this.wide/2), this.x, (this.y-(this.wide/2))+this.high);    //create part line of balloon
    fill(this.colorRed, this.colorGreen, this.colorBlue); // random color balloon
    circle(this.x, this.y, this.wide);    //create part circle of balloon
  }
  
  void fly(){
    if(mousePressed){  
      this.y = this.y; //if preesed mouse program will hold the balloon 
    }
    else{  //if not pressed mouse the balloon will fly up
      if(this.y > -this.high){
        this.y -= this.speed; 
        this.x += random(-2, 2); //make balloon shake
      }
      else{
        this.y = this.bottomScreen+(this.wide/2); //if balloon left the window program will reset position to the bottom
      }
    }
    delay(30);
    this.create_balloon();
  }
}
 
Balloon b1 = new Balloon(200, 200, 100, 200, 300);
Balloon b2 = new Balloon(150, 100, 70, 200, 300);
Balloon b3 = new Balloon(50, 300, 40, 100, 300);

void setup(){
  size(300, 300);
  frameRate(20);
}
void draw(){
  background(255, 255, 255);
  b1.fly();
  b2.fly();
  b3.fly();
}
