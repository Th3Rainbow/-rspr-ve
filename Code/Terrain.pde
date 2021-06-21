
 class Terrain extends Figure{
  
  Terrain(float x, float y, float size, float speed, color C1, color C2, color C3){
    super(x, y, size, speed, C1, C2, C3);


  }

  void FigureDisplay(){
   rectMode(CENTER);
   fill(c2);
   rect(posx, posy, size, size);
   noFill();
  }
  
}
