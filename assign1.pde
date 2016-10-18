/* please implement your assign1 code in this file. */
PImage bg1, bg2, bg3, bg4, enemy, fighter, hp, treasure;
int x;
int blood;
int treasureX, treasureY;
int speedEnemy, enemyY;

void setup () {
  size(640,480) ;  // must use this size.
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  bg3 = loadImage("img/bg1.png");
  bg4 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  
  //background
  image(bg1,0,0,640,480);
  
  //random blood
  blood = floor(random(10,200));
  
  //random treasure position  
  treasureX = floor(random(5,580));
  treasureY = floor(random(25,465));
  
  //random enemy height
  enemyY = floor(random(25,455));
}

void draw() {
  //background roll
  if(640+x%1280>640){
    image(bg1,-1280,0,640,480);
  }
  if(0+x%1280>640){
    image(bg2,-1280,0,640,480);
  }
  if(1280+x%1280>640){
    image(bg3,-1280,0,640,480);
  }
  if(-1280+x%1280>640){
    image(bg4,-1280,0,640,480);
  }
  image(bg1,640+x%1280,0,640,480);
  image(bg2,0+x%1280,0,640,480);
  image(bg3,-640+x%1280,0,640,480);
  image(bg4,-1280+x%1280,0,640,480);
  x+=4;
  
  //blood
  noStroke();
  fill(255,0,0);
  rect(10,5,blood,20);
  
  //hp
  image(hp,0,0);
  
  //fighter
  image(fighter,585,240);
  
  //treausre
  image(treasure,treasureX,treasureY);
  
  //enemy
  image(enemy,0+speedEnemy%640,enemyY);
  speedEnemy+=5;
}
