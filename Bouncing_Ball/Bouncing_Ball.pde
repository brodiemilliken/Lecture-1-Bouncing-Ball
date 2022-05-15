float x, y; //Instantiate balls x and y coordinates.
float xVel, yVel; //Instantiate balls x and y velocity

float ballWidth; //Instantiate ball width

void setup(){
  fullScreen(); //Sets screen size to fullscreen
  x = width/2; //Sets x position to halfway across the screen
  y = height/2; //Sets y position to halfway up the screen
  xVel = 3; //Sets initial horizontal velocity to 3 pixels per frame
  yVel = 2; //Sets initial vertical velocity to 2 pixels per frame
  ballWidth = 20;
}

void draw(){
  background(0); //Sets the background color to black
  
  move(); //Calls the move method each frame
  bounce(); //Calls bounce method each frame
  gravity(); //Calls gravity method each frame

  fill(255); //Sets the fill color to white
  //Draws a circle at position x,y with ballWidth radius
  ellipse(x,y,ballWidth,ballWidth); 
}

void move(){
  x+=xVel; //Adds xVel to horizontal position
  y+=yVel; //Adds yVel to vertical position
}

void bounce(){
//Checks if ball hits a horizontal wall, revereses horizontal velocity if it does
  if (x <= ballWidth/2 || x >= width - ballWidth/2) xVel = -xVel; 
//Checks if ball hits a vertical wall, revereses vertical velocity if it does
  if (y <= ballWidth/2 || y >= height - ballWidth/2) yVel = -yVel; 
}

void gravity(){
  yVel += 0.2; //Adds a downward acceleration to the y velocity
}
