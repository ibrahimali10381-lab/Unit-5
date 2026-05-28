void game() {
  background(blue);
  textAlign(CENTER);
  stroke(0);
  theme.play();


    if (frameCount >= 4000) {
    theme.rewind();
    theme.play();
  }


  //draw paddles
  textAlign(CENTER);
  fill(pink);
  circle(leftx, lefty, leftd);
  fill(255);
  circle(leftx, lefty, leftd/2);
  fill(pink);
  pushMatrix();
  translate(leftx, lefty);
  rotate(radians(90));
  fill(pink);
  textSize(leftd/4);
  text("M", 0, 0);
  popMatrix();

  fill(green);
  circle(rightx, righty, rightd);
  fill(255);
  circle(rightx, righty, rightd/2);
  fill(green);
  pushMatrix();
  translate(rightx, righty);
  rotate(radians(-90));
  fill(green);
  textSize(rightd/4);
  text("L", 0, 0);
  popMatrix();

  //move paddles
  if (wkey == true) lefty = lefty -10;
  if (skey == true) lefty = lefty +10;


  if (AI != true) {
    if (upkey == true) righty = righty -10;
    if (downkey == true) righty = righty +10;
  } else if (ballx>width/2) {

    if (bally - righty > 15) {
      righty += 15;
    } else if (righty - bally > 15) {
      righty -= 15;
    }
  }


  if (lefty <leftd/2) lefty = leftd/2;
  if (righty <rightd/2) righty = rightd/2;
  if (lefty >height-leftd/2) lefty = height-leftd/2;
  if (righty >height-rightd/2) righty = height-rightd/2;



  //ball
  fill(255);
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
    a = 15;
    vx = s*cos(random(360));
    vy = s*sin(random(360));
  }
  if (ballx>width) {
    score1 +=1;
    ballx = width/2;
    bally = height/2;
    timer = 100;
    a = 15;
    vx = s*cos(random(360));
    vy = s*sin(random(360));
  }


  //Ball Bounce Walls
  if (bally-balld/2 <0 || bally+balld/2> width) {
    vy = vy*-1;
  }



  //Ball Bounce Paddles
  if (dist(leftx, lefty, ballx, bally) <= (balld+leftd)/2) {
    vx = (ballx - leftx)/a;
    vy = (bally - lefty)/a;
    a = a/1.1;
  }
  if (dist(rightx, righty, ballx, bally) <= (balld+rightd)/2) {
    vx = (ballx - rightx)/a;
    vy = (bally - righty)/a;
    a = a/1.1;
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
