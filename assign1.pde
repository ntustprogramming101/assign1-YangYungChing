PImage skyImage;
PImage soilImage;
PImage lifeImage;
PImage groundhogImage;
PImage soldierImage;
PImage robotImage;

int soldierX=-80;
int soldierY=floor(random(2,6))*80;

float robotX=floor(random(3,8))*80;
int robotY=floor(random(2,6))*80;

float lineX=robotX+25;
float lineX1,lineX2,lightY,lineDistance;








void setup() {
  
  size(640, 480, P2D);

  skyImage=loadImage("img/bg.jpg");
  soilImage=loadImage("img/soil.png");
  lifeImage=loadImage("img/life.png");
  groundhogImage=loadImage("img/groundhog.png");
  soldierImage = loadImage("img/soldier.png");
  robotImage = loadImage("img/robot.png");
  
}

void draw() {
  
  //sky
  image(skyImage,0,0);
  
  //soil
  image(soilImage,0,160);
  
  //life
  image(lifeImage,10,10);
  image(lifeImage,80,10);
  image(lifeImage,150,10);
  
  //grass
  noStroke();
  fill(124,204,25);
  rect(0,145,640,15);
  
  //groundhog
  image(groundhogImage,280,80);
  
  //sun
  fill(253, 184, 19);
  stroke(255,255,0);
  strokeWeight(5);
  ellipse(590,50,120,120);
  
  //soldier
  image(soldierImage,soldierX,soldierY);
  soldierX+=3;
  if(soldierX>640){
    soldierX=-80;
  }
  
  //robot
  image(robotImage,robotX,robotY);
  
  //light
  strokeWeight(10);
  stroke(255,0,0);
  lineDistance=(lineDistance-2)%160;
  line(lineX1,robotY+37,lineX2,robotY+37);
  lineX1=min(lineX,lineX+lineDistance);
  lineX2=min(lineX,lineX1+40);
  
}
