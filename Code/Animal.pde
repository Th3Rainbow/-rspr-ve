
class Animal extends Figure{
  
  Animal(float x, float y, float size, float speed, color C1, color C2, color C3){
    super(x, y, size, speed, C1, C2, C3);

  }
  void FigureDisplay(){
   rectMode(CENTER);
   fill(c1);
   rect(posx, posy, size, size);
   noFill();
  }
  
    void collision(){
  for (int j = 0; j < AnimalList.size(); j++){
    for (int i = 0; i < TerrainList.size(); i++){
      println(i, j);
      if( AnimalList.get(j).posx < TerrainList.get(i).posx+(TerrainList.get(i).size/2) &&
            AnimalList.get(j).posx > TerrainList.get(i).posx-(TerrainList.get(i).size/2) &&
            AnimalList.get(j).posy > TerrainList.get(i).posy-(TerrainList.get(i).size/2) &&
            AnimalList.get(j).posy < TerrainList.get(i).posy+(TerrainList.get(i).size/2)) {
            AnimalList.get(j).speedx = AnimalList.get(j).speedconstantx/2;
            AnimalList.get(j).speedy = AnimalList.get(j).speedconstanty/2;
        
  }else{
            AnimalList.get(j).speedx = AnimalList.get(j).speedconstantx;
            AnimalList.get(j).speedy = AnimalList.get(j).speedconstanty; 
          
        }
      }
    }
  }
  
  void move(){
    text(speedy, 200, 200);
    text(speedx, 250, 200);
    posx += speedx;
    posy += speedy;
    
    if(posx >= 600){
      speedx = -Math.abs(speedx);
      speedconstantx = -Math.abs(speedconstantx);
      }
    if(posx <= 0){
      speedx = Math.abs(speedx);
      speedconstantx = Math.abs(speedconstantx);
      }
    if(posy >= 900){
      speedy = -Math.abs(speedy);
      speedconstanty = -Math.abs(speedconstanty);
      }
    if(posy <= 0){
      speedy = Math.abs(speedy);
      speedconstanty = Math.abs(speedconstanty);
      }
    }
  }
