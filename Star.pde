class Star{
  private float myX, myY, mySize, myColor;
  
  public Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    mySize = (int)(Math.random()*5)+3;
    myColor = (255);
  }
  
  public void show(){
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
  }
}//end of creating stars
