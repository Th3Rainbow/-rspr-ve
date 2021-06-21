
 class Figure{
  float posx, posy, size, speedx, speedy, speed, speedconstantx, speedconstanty;
  color c1;
  color c2;
  color c3;
  
  Figure(float x, float y, float size_, float speed_, color Color1, color Color2, color Color3){
    posx = x;
    posy = y;
    size = size_;
    speed = speed_;
    c1 = Color1;
    c2 = Color2;
    c3 = Color3;
     
    speedx = random(-speed, speed)*2;
    speedy = random(-speed, speed)*2;
    speedconstantx = speedx;
    speedconstanty = speedy;
  }
  
  void display(){
    FigureDisplay();
    
  }
  
    void move(){
  }
  void collision(){
  }
  void grow(){
    
  }

  void FigureDisplay(){
    
  }
}
