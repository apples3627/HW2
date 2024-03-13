void myitem(float x,float y,float d){ //23학번김예은 
  strokeWeight(d*0.1);  //귀_맨마지막에추가함
  stroke(153,102,51);
  fill(255);
  triangle(x,y,x-d*0.5,y-d*0.75,x-d*0.67,y);
  triangle(x,y,x+d*0.5,y-d*0.75,x+d*0.67,y);
  
  fill(153,102,51);  //얼굴색
  strokeWeight(0);
  ellipse(x,y,d*1.5,d*1.0);  //얼굴

  fill(255);  //볼 흰 털
  circle(x-d*0.4,y+d*0.125,d*0.4); 
  circle(x+d*0.4,y+d*0.125,d*0.4);
  fill(102,51,0);  //볼 어두운 갈색 털
  circle(x-d*0.3,y+d*0.175,d*0.4);
  circle(x+d*0.3,y+d*0.175,d*0.4);
  fill(255);    //코 있는 가운데 흰 털
  ellipse(x,y+d*0.18,d*1.5*0.5,d*1.2*0.4);
  
  fill(0);   //눈
  circle(x-d*0.3,y-d*0.06,d*0.2);
  circle(x+d*0.3,y-d*0.06,d*0.2);
  fill(102,51,0);  //눈썹
  ellipse(x-d*0.3,y-d*0.25,d*0.25,d*0.1);
  ellipse(x+d*0.3,y-d*0.25,d*0.25,d*0.1);
  fill(255);  //눈 빤짝
  ellipse(x-d*0.33,y-d*0.07,d*0.08,d*0.08);
  ellipse(x+d*0.27,y-d*0.07,d*0.08,d*0.08);
  
  fill(0);  //코랑 입
  circle(x,y+d*0.125,d*0.2);
  ellipse(x,y+d*0.3,d*0.3,d*0.03);
  
  stroke(255,230,179);  //수염
  strokeWeight(2);
  line(x+d*0.2,y+d*0.2,x+d*0.7,y+d*0.3);
  line(x-d*0.2,y+d*0.2,x-d*0.7,y+d*0.3);
  line(x+d*0.2,y+d*0.15,x+d*0.85,y+d*0.1);
  line(x-d*0.2,y+d*0.15,x-d*0.85,y+d*0.1);  
}
