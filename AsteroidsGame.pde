//number of stars
Star [] dots = new Star[200];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> roid;
Asteroid [] rocks = new Asteroid [5];

void setup(){
  size(500,500);
  roid = new ArrayList <Asteroid>();
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Star();
  }
  for(int i = 0; i < rocks.length; i++){
    rocks[i] = new Asteroid();
  }
  for(int i = 0; i < rocks.length; i ++){
    roid.add(rocks[i]);
  }
}
void draw(){
  background(0);
  strokeWeight(0);
  for(int i = 0; i < dots.length; i++){
    dots[i].show();
  }
  bob.move();
  bob.show();
  for(int i = 0; i <roid.size(); i++){
    roid.get(i).show();
    roid.get(i).move();
    roid.get(i).turn(roid.get(i).getRotSpeed());
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)roid.get(i).getX(), (float) roid.get(i).getY());
    if (d < 15){
      roid.remove(i);
      i--;
    }
  }
  
  
}
public void keyPressed(){
  if(keyPressed){
    if(key == 'a'|| key == 'A'){
      bob.turn(-10);
    }
    if(key == 'd'|| key == 'D'){
      bob.turn(10);
    }
    if(key == 'w'|| key == 'W'){
      bob.accelerate(1);
    }
    if(key == 's'||key == 'S'){
      bob.hyperspace(); 
    }
  }
}
