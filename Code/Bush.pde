
 class Bush extends Figure{
  
  Bush(float x, float y, float size, float speed){
    super(x, y, size, speed);
    
  }
  
  void FigureDisplay(){
   rect(posx, posy, size, size);
  }
}
