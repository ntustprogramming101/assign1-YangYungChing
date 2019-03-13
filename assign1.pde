PImage skyImage;
PImage soilImage;
PImage lifeImage;
PImage groundhogImage;
PImage soldierImage;
PImage robotImage;

int soldierx;
int soldiery=floor(random(4))+1;

float robotx=random(400)+80;
int roboty=floor(random(4))+1;

float lightx=robotx+20;
float lighty=480-80*roboty;
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
  image(soldierImage,soldierx,480-80*soldiery);
  soldierx+=3;
  soldierx%=640;
  
  //robot
  image(robotImage,robotx,480-80*roboty);
  
  //light
  strokeWeight(10);
  stroke(255,0,0);
  line(lightx-lightDistance,lighty+37,lightx-30-lightDistance,lighty+37);
  lightSpeed=lightSpeed+2;
  lightDistance=lightSpeed%160; 
}
