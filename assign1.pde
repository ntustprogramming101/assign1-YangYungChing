PImage skyImage;
PImage soilImage;
PImage lifeImage;
PImage groundhogImage;
PImage soldierImage;
PImage robotImage;

int soldierX;
int soldierY=floor(random(4))+1;

float robotX=random(400)+80;
int robotY=floor(random(4))+1;

float lightX=robotX+20;
float lightY=480-80*robotY;
float lightDistance;
float lightSpeed;






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
  fill(255,255,0);
  ellipse(590,50,110,110);
  fill(253,184,19);
  ellipse(590,50,100,100);
  
  //soldier
  image(soldierImage,soldierX,480-80*soldierY);
  soldierX+=3;
  soldierX%=640;
  
  //robot
  image(robotImage,robotX,480-80*robotY);
  
  //light
  strokeWeight(10);
  stroke(255,0,0);
  line(lightX-lightDistance,lightY+37,lightX-30-lightDistance,lightY+37);
  lightSpeed+=2;
  lightDistance=lightSpeed%160; 
}
