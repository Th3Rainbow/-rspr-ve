
public ArrayList <Animal> AnimalList = new ArrayList <Animal> ();
public ArrayList <Terrain> TerrainList = new ArrayList <Terrain> ();
public ArrayList <Bush> BushList = new ArrayList <Bush> ();

void setup(){
  size(600, 900);
  background(255, 247, 0);
  
}

void draw(){
  clear();
  println(TerrainList);
  
 for(Animal a : AnimalList){
    a.display();
    a.move();
    a.collision();
  }
  
   for(Terrain b : TerrainList){
    b.display();
    b.collision();
  }
  
   for(Bush c : BushList){
    c.display();

  }
  
}

public void keyPressed(){
  Animal a;
  float randomax = random(width);
  float randomay = random(height);
  float randomas = random(10, 50);
  float randomaspeed = random(-10, 10);
  
 Terrain b;
  float randombx = random(width);
  float randomby = random(height);
  float randombs = random(10, 50);
  float randombspeed = random(-10, 10);
  
 Bush c;
  float randomcx = random(width);
  float randomcy = random(height);
  float randomcs = random(10, 50);
  float randomcspeed = random(-10, 10);
  
  if(key == 'b'){
   a = new Animal(randomax, randomay, randomas, randomaspeed);
     AnimalList.add(a);
  }
  
  if(key == 'n'){
   b = new Terrain(randombx, randomby, randombs, randombspeed);
     TerrainList.add(b);

  }  
  
  if(key == 'm'){
   c = new Bush(randomcx, randomcy, randomcs, randomcspeed);
     BushList.add(c);
  } 

}
