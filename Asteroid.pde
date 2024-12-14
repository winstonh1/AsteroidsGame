class Asteroid extends Floater {
  public double rotSpeed;
  public Asteroid(){
    myColor = color(142,138,126);
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = (Math.random()*6)-3;
    myYspeed = (Math.random()*6)-3;
    myPointDirection = Math.random()*360;
    myColor = (0);
    
    rotSpeed = (Math.random()*10) - 5;
  }
  //asteroids 
  public double getRotSpeed() {
    return rotSpeed;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }

}
