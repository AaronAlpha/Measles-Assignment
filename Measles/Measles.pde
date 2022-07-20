//Global Variables






void setup() {
  //Canvas will be added in later
  xCenter = width/2;
  yCenter = height/2;
  size(800, 600); // Landscape
    
  populationVariables();
  //sequential programming - explicitly waits in-line, for the expected events in various places in the execution path.
  
  //rect(xCenter - faceRadius, 0, 2*faceRadius, smallerDimension); //visual representation for the 'virtual box' for all the measles to lie in/on
  
  
  
  fill(resetWhite);
  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace); 
   
  
}; // end setup



void draw() {
  // in void draw, the following code put here is being printed/drawn 60times per second, hence if there was something
  //
  xStar1 = random(0, xCenter-faceRadius);
  yStar1 = random(0, height);
  
  xStar2 = random(xCenter+faceRadius, width);
  yStar2 = random(0, height);
  
  fill(gold);//color of star
  noStroke();//removes the outlining for measle
  starDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//randomizes measle diameter
  ellipse(xStar1, yStar1, starDiameter, starDiameter);//creating stars in background
  ellipse(xStar2, yStar2, starDiameter, starDiameter);//creating stars in background
  stroke(1); //resets default //setting for how thick the star outline will be 
  fill(resetWhite);
  
  
  xSnow1 = random(0, xCenter-faceRadius);
  ySnow1 = random(0, height);
  
  xSnow2 = random(xCenter+faceRadius, width);
  ySnow2 = random(0, height);
  
  fill(iceBlue);
  noStroke();
  snowDiameter = random(smallerDimension*1/75, smallerDimension*1/90);
  ellipse(xSnow1, ySnow1, snowDiameter, snowDiameter);
  ellipse(xSnow2, ySnow2, snowDiameter, snowDiameter);
  stroke(1);
  fill(resetWhite);

  
  
  fill(resetWhite);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter) ;//Left eye
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter) ;//Right eye
  
  fill(pink);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNOstril, xRightNostril, yRightNostril);//Nose
  fill(resetWhite);
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
  fill(pink);
  triangle(xbottomrightRightCatEarInside, ybottomrightRightCatEarInside, xtoprightRightCatEarInside, ytoprightRightCatEarInside, xcenterRightCatEarInside, ycenterRightCatEarInside);
  triangle(xbottomleftLeftCatEarInside, ybottomleftLeftCatEarInside, xtopleftLeftCatEarInside, ytopleftLeftCatEarInside, xcenterLeftCatEarInside, ycenterLeftCatEarInside);
  

  line(xCenterPoint, yCenterPoint, xRightTop, yRightTop);
  line(xCenterPoint, yCenterPoint, xRightBottom, yRightBottom);
  line(xCenterPoint, yCenterPoint, xLeftTop, yLeftTop);
  line(xCenterPoint, yCenterPoint, xLeftBottom, yLeftBottom);
  fill(resetWhite);
  
  
}; // end draw





void keyPressed() {  
  // this means that night mode will be on meaning `
  if (keyPressed) {
    if(key == 'n' || key == 'N') {// 'n/N' denotes 'nightmode'(i.e. 'N = N ight'; no blue color)
      backgroundColor = (nightMode == false) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
      //this is when nightMode is ON, :. no bluelight
      background(backgroundColor);
      fill(resetWhite);
      ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
      triangle(xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar);
      triangle(xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar);
      fill(pink);
      triangle(xbottomrightRightCatEarInside, ybottomrightRightCatEarInside, xtoprightRightCatEarInside, ytoprightRightCatEarInside, xcenterRightCatEarInside, ycenterRightCatEarInside);
      triangle(xbottomleftLeftCatEarInside, ybottomleftLeftCatEarInside, xtopleftLeftCatEarInside, ytopleftLeftCatEarInside, xcenterLeftCatEarInside, ycenterLeftCatEarInside);
      fill(resetWhite);
    }
    if (key == 'b'  || key == 'B') {// 'b/B' denotes 'no nightmode'(i.e. 'B = B lue'; blue color is also present)
      backgroundColor = (nightMode == true) ? color(random(0, 255), random(0, 255), 0): color(random(0, 255), random(0, 255), random(0, 255)); //Ternary operator is similar to an if else
      //this is when nightMode is OFF, :. there is bluelight
      background(backgroundColor);
      fill(resetWhite);
      ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace);
      triangle(xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar);
      triangle(xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar);
      fill(pink);
      triangle(xbottomrightRightCatEarInside, ybottomrightRightCatEarInside, xtoprightRightCatEarInside, ytoprightRightCatEarInside, xcenterRightCatEarInside, ycenterRightCatEarInside);
      triangle(xbottomleftLeftCatEarInside, ybottomleftLeftCatEarInside, xtopleftLeftCatEarInside, ytopleftLeftCatEarInside, xcenterLeftCatEarInside, ycenterLeftCatEarInside);
      fill(resetWhite);
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
