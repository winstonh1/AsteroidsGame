class Spaceship extends Floater{
  public Spaceship(){
    corners = 11;
    xCorners = new int[]{-14,-14,-4,-4,-1,4,16,4,-1,-4,-4};
    yCorners = new int[]{3,-3,-7,-13,-13,-7,0,7,13,13,7};

    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myColor = (255);
  }
  
  public void hyperspace(){
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*360;
  }

}
