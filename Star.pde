class Star{
  private float myX, myY, mySize, myColor;
  
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (int)(Math.random()*5)+3;
    myColor = (255);
  }
  
  public void show(){
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
  }
}//end of creating stars
