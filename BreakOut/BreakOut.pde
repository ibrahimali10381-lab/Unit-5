import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Pallette
color pink = #E82F25;
color green = #32D302;
color blue = #5FA1E5;


//Intro stuff
int time;


//Mode Framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//Game entity variables
float paddlex, paddley, paddled; //paddles
float ballx, bally, balld;//ball
float vx, vy, s;
float a =15;
boolean win = false;
int score;

//Keyboard variables
boolean akey, dkey, leftkey, rightkey;

//Bricks
int n;
int brickd;
int [] x;
int [] y;
int tempx;
int tempy;
boolean shift;
int shifter;
boolean[] alive;

//Sound
Minim minim;
AudioPlayer theme;

void setup() {
  size(800, 800);
  textAlign(CENTER);
  mode = GAME;



  //initialise ball
  ballx = width/2;
  bally = height-200;
  balld = 50;
  s = 5;
  vx = s*cos(random(360));
  vy = s*sin(random(360));


  //Initialise paddles
  paddley= height;
  paddlex = width/2;
  paddled = 100;


  //initalise arrays
  n = 30;
  shift = false;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx = 50;
  tempy = 100;
  brickd = 50;

  int i = 0;
  while (i < n)
  {
    if(shift == false){
     shifter = 50; 
    }
    else shifter = 0;
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx +100;
    if (tempx >= width) {
      tempy = tempy+ 100;
      tempx = 50 + shifter;
      shift = !shift;
    }
    i =i+ 1;
  }




  //Sound
  minim = new Minim(this);
}

void draw() {
  if (mode == INTRO) {
    Intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error ; Mode = " + mode);
  }
}
