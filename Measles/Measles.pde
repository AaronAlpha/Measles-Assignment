//Global Variables
float xFace, yFace, widthDiamterFace, heightDiamterFace, faceRadius, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth, xCenterMouth, yCenterMouth;
int thack = 50;
float xMeasle, yMeasle, measleDiameter;
float xCenter, yCenter;
color resetWhite = #FFFFFF, red = #FF0000; //this is not populated as population needs display(hence why unique)
// color, is similar to an int declaration 
boolean nightMode = false;
color backgroundColor;


void setup() {
  //Canvas will be added in later
  xCenter = width/2;
  yCenter = height/2;
  size(800, 600); // Landscape
  
  //Population - Face
  xFace = xCenter ;
  yFace = yCenter ;
  if (width > height) {smallerDimension = height;
  } else {smallerDimension = width;}
  widthDiamterFace =  smallerDimension;
  heightDiamterFace = smallerDimension;
  //End Population - Face
  
  
  //Population - Eyes
  xLeftEye = xCenter - xCenter*1/4;
  yLeftEye = yCenter - yCenter*1/4;
  eyeDiameter = smallerDimension*1/8;
  xRightEye = xCenter + xCenter*1/4;
  yRightEye = yCenter - yCenter*1/4;
  //End Population - Eyes
  
  
  //Population - Nose
  xNoseBridge = xCenter;
  yNoseBridge = yCenter - yCenter*1/8;
  xLeftNostril = xCenter + xCenter*1/6;
  yLeftNOstril = yCenter + yCenter*1/8;
  xRightNostril = xCenter - xCenter*1/6;
  yRightNostril = yCenter + yCenter*1/8;
  //End Population - Nose
  
  
  //Population Mouth
  xLeftMouth = xCenter - xCenter*1/4;
  yLeftMouth = yCenter + yCenter*1/2;
  xRightMouth = xCenter + xCenter*1/4;
  yRightMouth = yCenter + yCenter*1/2;
  
  //xCenterMouth = xCenter - xCenter*1/4;
  //yCenterMouth = yCenter + yCenter*1/2;
  //xRightMouth = xCenter + xCenter*1/4;
  //yRightMouth = yCenter + yCenter*1/2;
  //xLeftMouth = xCenter - xCenter*1/4;
  //yLeftMouth = yCenter + yCenter*1/2;
  //xRightMouth = xCenter + xCenter*1/4;
  //yRightMouth = yCenter + yCenter*1/2;
  //End Population - Mouth
  
  
  faceRadius = smallerDimension/2; //used to figure out the boudaries for where the measles can spawn
  //Population Measle
  
  //End Population Measle
  
  
  

  //sequential programming - explicitly waits in-line, for the expected events in various places in the execution path.
  
}; // end setup



void draw() {
  // in void draw, the following code put here is being printed/drawn 60times per second, hence if there was something
  //

  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter) ;//Left eye
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter) ;//Right eye
  
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril);//Nose
  
  strokeCap(ROUND); //Default is ROUND; PROJECT is another option  //sets style for line endings, 3options: SQUARE, ROUND, EXTENDED(all caps)
  strokeWeight(thack);//sets width of stroke used for lines, points and borders of shapes; width units: pixel;(option 1 is default)
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //line(xCenterMouth, yCenterMouth, xRightMouth, yRightMouth);//Mouth 1
  //line(xCenterMouth, yCenterMouth, xLeftMouth, yLeftMouth); //MOuth 2
  strokeWeight(1);


  //
  xMeasle = random(xCenter - faceRadius, xCenter + faceRadius);
  yMeasle = random(0, smallerDimension);
  fill(red);//color of measle
  noStroke();//removes the outlining for measle
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//randomizes measle diameter
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);//creating meassle
  stroke(1); //resets default //setting for how thick the measle outline will be 
  fill(resetWhite);//
  
  
}; // end draw



void keyPressed() {  
  if (keyPressed == true) {
    backgroundColor = (nightMode == false) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
    background(backgroundColor);
    ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);    
  }
  
};// end keyPressed





void mousePressed() {
  //Hence there are 4 ways to code a mouse button press:  
  
  if (mouseButton == LEFT) {
    backgroundColor = (nightMode == true) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
    background(backgroundColor);
    ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
  }; //End left mouse button; 1st way to code mouse button
  
  //if (mouseButton == RIGHT) {
  //  backgroundColor = (nightMode == true) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
  //  background(backgroundColor);
  //  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
  //}; //End right mouse button; 2nd way to code mouse button
  
   //Note: Mouse wheel is also avaliable
   //if (mouseButton == WHEEL) {} //End mouse wheel; 3rd way to code mouse button
  
  
  
  /*
  //when any button pressed something going to happen with this listener
  //4th way to code mouse button
  if (nightMode == false) {//Nightmode switch
    nightMode = true ;  
  } else {
    nightMode = false;
  }; //End nightmode swith  
  //
  backgroundColor = (nightMode == true) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else

  background(backgroundColor);
  
    //the face ellipse is put here in the 'void setup' as to have the face drawn once, go to 'void draw' for explanation
  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
  
  */
  
};// end mousePressed

// End MAIN program
