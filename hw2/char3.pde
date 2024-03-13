void myitem2(float x, float y, float d){//23학번 구민주 
  
  fill(250,250,230);
  ellipse(x-d*5,y+d*1.2, d*2.2, d*4.2);
  ellipse(x+d*5,y+d*1.2, d*2.2, d*4.2);
  
  fill(250,250,230);
  circle(x,y,d*10);
  
  fill(255);
  circle(x-d*2,y-d*1, d*2);
  circle(x+d*2,y-d*1, d*2);
  
  fill(0);
  circle(x-d*2,y-d*1, d*1.5);
  circle(x+d*2,y-d*1, d*1.5);
  
  fill(255);
  ellipse(x,y+d*2,d*6,d*4);
  
  fill(40);
  ellipse(x,y+d*1.3,d*1.2,d*0.8);
  
  fill(250);
  arc(x,y+d*2.2,d*1.6,d*1.2,0,PI);
}
