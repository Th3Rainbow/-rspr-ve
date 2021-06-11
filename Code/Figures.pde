
 class Figure{
  float posx, posy, size, speedx, speedy, speed;
  Figure(float x, float y, float size_, float speed_){
    posx = x;
    posy = y;
    size = size_;
    speed = speed_;

    speedx = random(-speed, speed);
    speedy = random(-speed, speed);
  }
  
  void display(){
    FigureDisplay();
    
  }
  
    void move(){
  }
  void collision(){
  }

  void FigureDisplay(){
    
  }
}
