import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Pallette
color pink = #FF0F53;
color green = #558A67;




//Mode Framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld;//ball
float vx, vy, s;
boolean AI = false;

//Keyboard variables
boolean wkey, skey, upkey, downkey;


//Score
int score1,score2,timer;

void setup() {
  size(800, 800);
  textAlign(CENTER);
  mode = INTRO;


  //initalise paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;

  //initialise ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  s = 5;
  vx = s*cos(random(360));
  vy = s*sin(random(360));



  //initialise keyboard
  skey = wkey = upkey = downkey = false;
  
  //initialise scores
  score1 = 0;
  score2 = 0;
  timer = 100;
  
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
