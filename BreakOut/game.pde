void game() {

  background(blue);
  textAlign(CENTER);
  stroke(0);
  
  //bricks
  circle(x[0],y[0],100);
  circle(x[1],y[1],100);
  circle(x[2],y[2],100);
  

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
  if (ballx+balld/2> width) {
    vx = vx*-1;
  }
  if (ballx-balld/2< 0) {
    vx = vx*-1;
  }



  //Ball Bounce Paddles
  if (dist(paddlex, paddley, ballx, bally) <= (balld+paddled)/2) {
    vx = (ballx - paddlex)/a;
    vy = (bally - paddley)/a;
    a = a/1.1;
  }


  fill(255);
}

void gameClicks() {
  mode = PAUSE;
}
