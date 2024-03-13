void mainChar(float x, float y, float d){ //21학번 박지선
  fill(255, 190, 150);
  circle(x, y, d);
  fill(0); 
  circle(x - d/4, y - d/4, 3);
  circle(x + d/4, y - d/4, 3); 
  stroke(0);
  float mouth = y + d/4; 
  line(x - d/4, mouth, x + d/4, mouth); 
}
