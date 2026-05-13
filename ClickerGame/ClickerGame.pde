import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//VARIABLES ====================================================================


//Mode Varables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int SELECT = 4;
final int SIZE = 5;
final int SPEED = 6;
final int TARGET = 7;


//target Varables
float x, y, d; //Place

float vx, vy, s; //velocities

int targetType = 0; //Target Shape
float sliderX = 300;
float sliderSpeed = 300;
PImage dvd;


int score = 0;
int highScore = 0;
int lives = 3;


//Pallette
float randomR =random(255);
float randomG =random(255);
float randomB =random(255);





//Sound
Minim minim;
AudioPlayer theme, hit, miss, hyper, gameover;



//SETUP ============================================================================


void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  //TARGET INITALIZATION
  y= height/2;
  x = width/2;
  d =  (width+height)/16;
  s = 5;
  vx = s*cos(random(360));
  vy = s*sin(random(360));


  //minim
  minim = new Minim(this);
  theme = minim.loadFile("djartmusic-the-return-of-the-8-bit-era-301292.mp3");
  hit = minim.loadFile("dragon-studio-ding-402325.mp3");
  miss = minim.loadFile("floraphonic-classic-game-action-negative-6-224416.mp3");
  hyper = minim.loadFile("djartmusic-the-return-of-the-8-bit-era-301292.mp3");
  gameover = minim.loadFile("FAILURE.wav");
  
  //Images
  dvd = loadImage("OIP.png");
}


//SCENE LOADER =========================================================================

void draw() {
  if (mode == INTRO) {
    Intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == SELECT) {
    select();
  } else if (mode == SIZE) {
    Size();
  } else if (mode == SPEED) {
    speed();
  } else if (mode == TARGET) {
    target();
  } else {
    println("Error ; Mode = " + mode);
  }
}
