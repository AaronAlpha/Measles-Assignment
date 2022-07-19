//Global Variables
float xFace, yFace, widthDiamterFace, heightDiamterFace, faceRadius, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth, xCenterMouth, yCenterMouth;
float xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar;
float xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar;

int thack = 5;
float xMeasle, yMeasle, measleDiameter;
float xCenter, yCenter;
color resetWhite = #FFFFFF, red = #FF0000, green = #00FF00, black = #000000; //this is not populated as population needs display(hence why unique)
// color, is similar to an int declaration 
boolean nightMode = false; //means night mode is off(bluelight on)
color backgroundColor;
float xCenterPoint, yCenterPoint, xRightTop, yRightTop, xRightBottom, yRightBottom, xLeftTop, yLeftTop, xLeftBottom, yLeftBottom;





void setup() {
  //Canvas will be added in later
  xCenter = width/2;
  yCenter = height/2;
  size(800, 600); // Landscape
  
  //Population - Face
  xFace = xCenter ;
  yFace = yCenter ;
  if (width > height) {smallerDimension = height; //trying to make sure that the face fits in the provided canvas dimensions
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
  
  
  //Population - Mouth
  xLeftMouth = xCenter - xCenter*1/4;
  yLeftMouth = yCenter + yCenter*1/2;
  xRightMouth = xCenter + xCenter*1/4;
  yRightMouth = yCenter + yCenter*1/2;
  //End Population - Mouth
  
  
  faceRadius = smallerDimension/2; //used to figure out the boudaries for where the measles can spawn
  //Population Measle
  
  //End Population Measle
  
  
  //Population - Cat Ears 
  xbottomrightRightCatEar = xCenter + faceRadius;
  ybottomrightRightCatEar = yCenter;
  xtoprightRightCatEar = xCenter + faceRadius;
  ytoprightRightCatEar = 0;
  xcenterRightCatEar = xCenter;
  ycenterRightCatEar = 0;
  
  xbottomleftLeftCatEar = xCenter - faceRadius;
  ybottomleftLeftCatEar = yCenter;
  xtopleftLeftCatEar = xCenter - faceRadius;
  ytopleftLeftCatEar = 0;
  xcenterLeftCatEar = xCenter ;
  ycenterLeftCatEar = 0;
  //End Population Cat Ears
  
  
  //Population Cat Whiskers
  xCenterPoint = xCenter;
  yCenterPoint = yCenter;
  xRightTop =  xCenter + xCenter*2/3;
  yRightTop = 262.5;
  xRightBottom = xCenter + xCenter*2/3;
  yRightBottom = 337.5;
  xLeftTop = xCenter - xCenter*2/3;
  yLeftTop = 262.5;
  xLeftBottom = xCenter - xCenter*2/3;
  yLeftBottom = 337.5;
  
  
  
  //rect(xCenter - faceRadius, 0, 2*faceRadius, smallerDimension); //visual representation for the 'virtual box' for all the measles to lie in/on
  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace); 
  
  
  

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
  strokeWeight(1);
  


  //
  xMeasle = random(xCenter - faceRadius, xCenter + faceRadius);
  yMeasle = random(0, smallerDimension);

  fill(red);//color of measle
  noStroke();//removes the outlining for measle
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//randomizes measle diameter
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);//creating meassle
  stroke(1); //resets default //setting for how thick the measle outline will be 
  fill(resetWhite);
  
  triangle(xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar);
  triangle(xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar);
  fill(black);
  line(xCenterPoint, yCenterPoint, xRightTop, yRightTop);
  line(xCenterPoint, yCenterPoint, xRightBottom, yRightBottom);
  line(xCenterPoint, yCenterPoint, xLeftTop, yLeftTop);
  line(xCenterPoint, yCenterPoint, xLeftBottom, yLeftBottom);

  
  
}; // end draw





void keyPressed() {  
  // this means that night mode will be on meaning `
  if (keyPressed) {
    if(key == 'n' || key == 'N') {// 'n/N' denotes 'nightmode'(i.e. 'N = N ight'; no blue color)
      backgroundColor = (nightMode == false) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
      //this is when nightMode is ON, :. no bluelight
      background(backgroundColor);
      ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
      triangle(xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar);
      triangle(xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar);
    }
    if (key == 'b'  || key == 'B') {// 'b/B' denotes 'no nightmode'(i.e. 'B = B lue'; blue color is also present)
      backgroundColor = (nightMode == true) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
      //this is when nightMode is OFF, :. there is bluelight
      background(backgroundColor);
      ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
      triangle(xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar);
      triangle(xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar);
    }
  }
  
  
  if (keyPressed) {
    if(key == 'e' || key == 'E') { // 'e/E' denotes 'exit mode'(i.e. 'E = E xit')
      exit();
    }
  };
  
};// end keyPressed






void mousePressed() {
  //Hence there are 4 ways to code a mouse button press:  
  
  //if (mouseButton == LEFT) {
  //  backgroundColor = (nightMode == true) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
  //  //this is when nightMode is OFF, :. there is bluelight
  //  background(backgroundColor);
  //  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
  //}; //End left mouse button; 1st way to code mouse button
  
  
  
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
