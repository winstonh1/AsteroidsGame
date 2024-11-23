Star [] dots = new Star[75];
Spaceship bob = new Spaceship();
void setup(){
  size(500,500);
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Star();
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
      bob.accelerate(.1);
    }
    if(key == 'q'||key == 'Q'){
      bob.hyperspace(); 
    }
  }
}
