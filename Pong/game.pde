void game() {
  background(0);
  textAlign(CENTER);


  //draw paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey == true) lefty = lefty -10;
  if (skey == true) lefty = lefty +10;


  if (AI != true) {
    if (upkey == true) righty = righty -10;
    if (downkey == true) righty = righty +10;
  }
  else{
    
   righty = bally; 
  }
  
  
  if (lefty <leftd/2) lefty = leftd/2;
  if (righty <rightd/2) righty = rightd/2;
  if (lefty >height-leftd/2) lefty = height-leftd/2;
  if (righty >height-rightd/2) righty = height-rightd/2;



  //ball
  circle(ballx, bally, balld);

  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  if (bally<(balld/2)-2) bally = (balld/2)+vy;
  if (bally>height-(balld/2)-2) bally =(height-balld/2)+vy;

  //Scoring
  if (ballx<0) {
    score2 +=1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  if (ballx>width) {
    score1 +=1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }


  //Ball Bounce Walls
  if (bally-balld/2 <0 || bally+balld/2> width) {
    vy = vy*-1;
  }



  //Ball Bounce Paddles
  if (dist(leftx, lefty, ballx, bally) <= (balld+leftd)/2) {
    vx = (ballx - leftx)/15;
    vy = (bally - lefty)/15;
  }
  if (dist(rightx, righty, ballx, bally) <= (balld+rightd)/2) {
    vx = (ballx - rightx)/15;
    vy = (bally - righty)/15;
  }

  //ScoreBoard
  textSize(50);
  fill(pink);
  text(score1, width/4, 100);
  fill(green);
  text(score2, 3*width/4, 100);

  fill(255);

  timer = timer -1;

  if (score1 == 7 || score2 == 7) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  mode = PAUSE;
}
