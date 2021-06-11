
class Animal extends Figure{
  
  Animal(float x, float y, float size, float speed){
    super(x, y, size, speed);

  }
  
  void FigureDisplay(){
   rect(posx, posy, size, size);
  }
  void move(){
    posx += speedx;
    posy += speedy;
    
    if(posx >= 600){
      speedx = -Math.abs(speedx);
      }
    if(posx <= 0){
      speedx = Math.abs(speedx);
      }
    if(posy >= 900){
      speedy = -Math.abs(speedy);
      }
    if(posy <= 0){
      speedy = Math.abs(speedy);
    }
  }
  void collision(){
  if (posx < Terrain.posx)
  }
}
