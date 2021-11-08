Spark[] spell;
void setup() {
  size(700, 700);
  spell = new Spark[40];
  for (int i = 0; i < spell.length; i++) {
    spell[i] = new Spark();
    spell[0] = new direct();
  }
}
void draw() {
  frameRate(126);
  fill(0, 0, 0, 16);
  rect(0, 0, 800, 800);
  for (int i = 0; i < spell.length; i++) {
    spell[i].move();
    spell[i].show();
  }
  fill(142, 81, 24);
  rect(347, 569, 9, 100, 5);
  rect(348, 562, 7, 100, 6);
  fill(116, 77, 40);
  rect(344, 651, 16, 100, 6);
  fill(95, 67, 39);
  rect(339, 681, 26, 100, 4);
}
void mousePressed() {
  for (int i = 0; i < spell.length; i++) {
    spell[i] = new Spark();
    spell[0] = new direct();
  }
}
class Spark {
  int colorRed, colorGreen, colorBlue;
  double myX, myY, myAngle, mySpeed;
  Spark() {
    myX = 350;
    myY = 560;
    myAngle = Math.random()*-1.2*Math.PI+0.3;
    mySpeed = (Math.random()*10)+1;
    colorRed = (int)(Math.random() * 255);
    colorGreen = (int)(Math.random() *76);
    colorBlue = (int)(Math.random() * 100);
  }
  void show() {
    fill(colorRed, colorGreen, colorBlue, 100);
    noStroke();
    ellipse((float)myX, (float)myY, 6, 6);
  }
  void move() {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
}

class direct extends Spark {
  void move() {
    myX = myX + Math.cos(mySpeed+1);
    myY = myY - Math.sin(Math.PI/2)*5;
  }
  void show() {
    fill((int)(Math.random()*256)+190, 0, 0, (int)(Math.random()*256));
    ellipse((float) myX, (float) myY, (int)(Math.random()*19)+16, (int)(Math.random()*19)+16);
  }
}
