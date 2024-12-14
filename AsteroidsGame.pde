//number of stars
Star [] dots = new Star[100];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> roid = new ArrayList<Asteroid>();
Asteroid [] rocks = new Asteroid [20];
ArrayList <Bullet> shots = new ArrayList<Bullet>();

void setup(){
  size(500,500);

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
  for(int i = 0; i < dots.length; i++){
    dots[i].show();
  }
  
  for(int j = 0; j < shots.size(); j++){
    shots.get(j).move();
    shots.get(j).show();
    shots.get(j).accelerate(.5);
  }   

  bob.move();
  bob.show();
  //Spaceship-Asteroid collision
  for(int i = 0; i <roid.size(); i++){
    roid.get(i).show();
    roid.get(i).move();
    roid.get(i).turn(roid.get(i).getRotSpeed());
    float d = dist((float)bob.getX(), (float)bob.getY(), 
                   (float)roid.get(i).getX(), (float) roid.get(i).getY());
    if (d < 15){
      roid.remove(i);
      i--;
      break;
    }
  }
  for(int i = 0; i < roid.size(); i++){
    for(int j = 0; j < shots.size(); j++){
      float p = dist((float)shots.get(j).getX(), (float)shots.get(j).getY(), 
                (float)roid.get(i).getX(), (float) roid.get(i).getY());
      if (p < 10){
        roid.remove(i);
        i--;
        shots.remove(j);
        j--;
        break;   
      }
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
    if(key == ' ')
      shots.add(new Bullet(bob));
  }
}
