//Global Variables






void setup() {
  //Canvas will be added in later
  xCenter = width/2;
  yCenter = height/2;
  size(800, 600); // Landscape
    
  populationVariables();
  //sequential programming - explicitly waits in-line, for the expected events in various places in the execution path.
  
  //rect(xCenter - faceRadius, 0, 2*faceRadius, smallerDimension); //visual representation for the 'virtual box' for all the measles to lie in/on
  
  
  backgroundColor = skyBlue;
  background(backgroundColor);
  fill(resetWhite);
  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace); 
   
  
}; // end setup



void draw() {
  // in void draw, the following code put here is being printed/drawn 60times per second, hence if there was something
  //
  drawMethod();
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
