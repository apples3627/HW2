float[] item1 = new float[2]; 
float[] item2 = new float[2]; 
int time1;
void setup() {
    size(700, 700);
    item1[0] = random(width);
    item1[1] = random(height);
    item2[0] = random(width);
    item2[1] = random(height);
  time1 = millis();
  }
  void draw() { 
    int sec =second();
    int min = minute();
    background(135,200,250);
    backG();
    int count = (millis() - time1) / 1000;
    fill(255);
    textSize(20);
    text("Time: " + count, 10, 20);
    if(count==5){
      text("10 point", mouseX+20,mouseY-10);
    }
    else if(count==10){
      text("20 point", mouseX+20,mouseY-10);
    }
    else if(count==15){
      text("30 point", mouseX+20,mouseY-10);
    }
    else if(count==20){
      text("30 point", mouseX+20,mouseY-10);
    }
    else if(count==25){
      text("50 point", mouseX+20,mouseY-10);
    }
    else if(count==30){
      text("Max(60) point", mouseX+20,mouseY-10);
    }
    mainChar(mouseX, mouseY, 40); 
    myitem(item1[0], item1[1], 60); 
    myitem2(item2[0], item2[1], 10);//*10
    textSize(20);
    text(min + ":"+sec,650,20);
    text("PRESS ESC to EXIT",20,690);
    for (int i = 0; i < 2; i++) {
      float speedX = random(-60, 60); 
      float speedY = random(-60, 60);
      float distance = dist(item1[0], item1[1], item2[0], item2[1]);
      float distMin = 80; //item끼리 충돌
      if (distance < distMin) { 
        float distchk = distMin - distance;
        if (item1[0] < item2[0]) {
          item1[0] -= distchk / 2;
          item2[0] += distchk / 2;
      } else if (item1[0] > item2[0]) {
        item1[0] += distchk / 2;
        item2[0] -= distchk / 2;
      }
        if (item1[1] < item2[1]) {
          item1[1] -= distchk / 2;
          item2[1] += distchk / 2;
        } else if (item1[1] > item2[1]) {
          item1[1] += distchk / 2;
          item2[1] -= distchk / 2;
        }
      }
      if (i == 0) { //벽 감지
        item1[0] += speedX;
        item1[1] += speedY;
        if (item1[0] < 0) {
          item1[0] = 0;
        } else if (item1[0] > width) {
          item1[0] = width;
        }
        if (item1[1] < 0) {
          item1[1] = 0;
        } else if (item1[1] > height) {
          item1[1] = height;
        }
      } else {
        item2[0] += speedX;
        item2[1] += speedY;
        if (item2[0] < 0) {
          item2[0] = 0;
        } else if (item2[0] > width) {
          item2[0] = width;
        }
        if (item2[1] < 0) {
          item2[1] = 0;
        } else if (item2[1] > height) {
          item2[1] = height;
        }
      }
      if (dist(mouseX, mouseY, item1[0], item1[1]) < 60) { 
      delay(1000);  
      exit();
      }
      else if(dist(mouseX, mouseY, item2[0], item2[1]) < 50) {
       delay(1000);
       exit();
      }
    }
  }
  void keyPressed() {
    if (key == ESC) {//esc 누르면 게임종료
      exit();
    }
  }
