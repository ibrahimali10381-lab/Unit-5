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

//Keyboard variables
boolean akey, dkey, leftkey, rightkey;

//Bricks
int [] x;
int [] y;


//Sound
Minim minim;
AudioPlayer theme;

void setup() {
  size(800, 800);
  textAlign(CENTER);
  mode = GAME;



  //initialise ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  s = 5;
  vx = s*cos(random(360));
  vy = s*sin(random(360));


  //Initialise paddles
  paddley= height;
  paddlex = width/2;
  paddled = 100;


  //initalise arrays
  x = new int[3];
  y = new int[3];

  x[0] = 100;
  y[0] = 100;
  x[1] = 400;
  y[1] = 100;
  x[2] = 700;
  y[2] = 100;


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
