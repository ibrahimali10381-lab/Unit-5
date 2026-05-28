void game() {

  background(black);
  textAlign(CENTER);
  stroke(0);
  image(deathStar, width/2, height/2);

  //bricks

  int i = 0;
  while (i < n) {
    if (alive[i] ==true) {
      bricked(i);
    }
    i = i+1;
  }

  //draw paddles
  fill(pink);

  circle(paddlex, paddley, paddled);
  fill(255);

  if (akey == true && paddlex-paddled/2 >0) paddlex = paddlex -10;
  if (dkey == true && paddlex+paddled/2 <width) paddlex = paddlex +10;




  //ball
  circle(ballx, bally, balld);

  ballx = ballx + vx;
  bally = bally + vy;

  if (bally<(balld/2)-2) bally = (balld/2)+vy;




  //Ball Bounce Walls
  if (bally-balld/2 <0) {
    vy = vy*-1;
  }

  if (bally-balld/2 >width) {
    mode = GAMEOVER;
  }
  if (ballx+balld/2> width) {
    vx = vx*-1;
    ballx = (width-balld/2);
  }
  if (ballx-balld/2< 0) {
    vx = vx*-1;
    ballx = (balld/2);
  }



  //Ball Bounce Paddles
  if (dist(paddlex, paddley, ballx, bally) <= (balld+paddled)/2) {
    vx = (ballx - paddlex)/a;
    vy = (bally - paddley)/a;
    a = a/1.05;
  }
  
  
  //Score
  textSize(50);
  text("Score: "+score, 150, height-100); 
  
  
  fill(255);
  if (score == 3000) {
    mode = GAMEOVER;
    win = true;
  }
}

void gameClicks() {
  mode = PAUSE;
}


void bricked(int i) {
  circle(x[i], y[i], brickd);
  image(tie, x[i], y[i], brickd-10, brickd-10);

  if (dist(x[i], y[i], ballx, bally) <= (balld+brickd)/2) {
    vx = (ballx - x[i])/a;
    vy = (bally - y[i])/a;
    alive[i] = false;
    a = a*1.01;
    score += 100;
  }
}
