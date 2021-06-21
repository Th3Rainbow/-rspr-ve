
public ArrayList <Animal> AnimalList = new ArrayList <Animal> ();
public ArrayList <Terrain> TerrainList = new ArrayList <Terrain> ();
public ArrayList <Bush> BushList = new ArrayList <Bush> ();

void setup() {
  size(600, 900);
}

void draw() {
  background(255);
  noStroke();

  for (Terrain b : TerrainList) {
    b.display();
  }
  
  for (Animal a : AnimalList) {
    a.display();
    a.move();
    a.collision();
  }

  for (Bush c : BushList) {
    c.display();
    c.grow();
  }
}
  
public void keyPressed() {
  Animal a;
  float randomax = random(width);
  float randomay = random(height);
  float randomas = random(10, 50);
  float randomaspeed = random(3, 5);
  color c1 = color(0);

  Terrain b;
  float randombx = random(width);
  float randomby = random(height);
  float randombs = random(50, 70);
  float randombspeed = random(5, 10);
  color c2 = color(204, 0, 204);

  Bush c;
  float randomcx = random(width);
  float randomcy = random(height);
  float randomcs = random(10, 50);
  float randomcspeed = random(3, 5);
  color c3 = color(0, 255, 0);

  if (key == 'b') {
    a = new Animal(randomax, randomay, randomas, randomaspeed, c1, c2, c3);
    AnimalList.add(a);
  }

  if (key == 'n') {
    b = new Terrain(randombx, randomby, randombs, randombspeed, c1, c2, c3);
    TerrainList.add(b);
  }  

  if (key == 'm') {
    c = new Bush(randomcx, randomcy, randomcs, randomcspeed, c1, c2, c3);
    BushList.add(c);
  }
}
