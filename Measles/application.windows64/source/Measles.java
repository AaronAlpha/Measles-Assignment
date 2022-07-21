import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Measles extends PApplet {

//Global Variables






public void setup() {
  //Canvas will be added in later
  xCenter = width/2;
  yCenter = height/2;
   // Landscape
    
  populationVariables();
  //sequential programming - explicitly waits in-line, for the expected events in various places in the execution path.
  
  //rect(xCenter - faceRadius, 0, 2*faceRadius, smallerDimension); //visual representation for the 'virtual box' for all the measles to lie in/on
  
  
  backgroundColor = skyBlue;
  background(backgroundColor);
  fill(resetWhite);
  ellipse(xFace, yFace, widthDiamterFace, heightDiamterFace); 
  
  
  
}; // end setup



public void draw() {
  // in void draw, the following code put here is being printed/drawn 60times per second, hence if there was something
  //
  drawMethod();
  
  
}; // end draw





public void keyPressed() {  
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






public void mousePressed() {
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
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio = 0.0f, imageHeightRatio = 0.0f, picWidthAdjusted, picHeightAdjusted;  
float imageLargerDimension, imageSmallerDimension;
PImage catCollar;
Boolean widthLarger = false, heightLarger = false;




public void catCollarPic() {
  
  
  catCollar = loadImage("../cat collar clip art.jpg"); //Dimensions: width = 263; height = 192
  int picWidth = 263;
  int picHeight = 192;
  if (picWidth >= picHeight) { //image dimension comparison
  //True if Landscape or square
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
  widthLarger = true;
  } else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;  
  heightLarger = true;
  }; //End image dimension comparison
  
  //Aspect Ratio
  if(widthLarger == true) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if(widthLarger == true) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if(heightLarger == true) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if(heightLarger == true) imageHeightRatio = imageLargerDimension / imageLargerDimension; 
  
  //Population of Rect()  
  imageX = xCenter-faceRadius;
  imageY = yCenter + yCenter*1/15 ; //the best i can do to bring pic down without comprimising pic(althought thats happening a bit) and seeing a miniscle bit more of pic, all while maintaing aspect ratio. basically yCenter(300) + yCenter*1/15(20 down)
  imageWidth = smallerDimension; 
  imageHeight = height;
  
  //Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  
}
public void drawMethod() {
  //rect(imageX, imageY, imageWidth, imageHeight);
  catCollarPic();
  image(catCollar, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
  
  
  xStar1 = random(0, xCenter-faceRadius);
  yStar1 = random(0, height);
  
  xStar2 = random(xCenter+faceRadius, width);
  yStar2 = random(0, height);
  //stars in background
  fill(gold);//color of star
  noStroke();//removes the outlining for measle
  starDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//randomizes measle diameter
  ellipse(xStar1, yStar1, starDiameter, starDiameter);//creating stars in background
  ellipse(xStar2, yStar2, starDiameter, starDiameter);//creating stars in background
  stroke(1); //resets default //setting for how thick the star outline will be 
  fill(resetWhite); 
  //
  
  
  
  xSnow1 = random(0, xCenter-faceRadius);
  ySnow1 = random(0, height);
  
  xSnow2 = random(xCenter+faceRadius, width);
  ySnow2 = random(0, height);
  //snow in background 
  fill(iceBlue);
  noStroke();
  snowDiameter = random(smallerDimension*1/75, smallerDimension*1/90);
  ellipse(xSnow1, ySnow1, snowDiameter, snowDiameter);
  ellipse(xSnow2, ySnow2, snowDiameter, snowDiameter);
  stroke(1);
  fill(resetWhite);
  //

  
  //measles
  xMeasle = random(xCenter - faceRadius, xCenter + faceRadius);
  yMeasle = random(0, smallerDimension);

  fill(red);//color of measle
  noStroke();//removes the outlining for measle
  measleDiameter = random(smallerDimension*1/75, smallerDimension*1/25);//randomizes measle diameter
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);//creating meassle
  stroke(1); //resets default //setting for how thick the measle outline will be 
  fill(resetWhite);
  //
  
  
  
  fill(resetWhite);
  //brown patch aorund left eye
  fill(brownorange);
  ellipse(xLeftEyePatch, yLeftEyePatch, patchDiameter, patchDiameter);
  fill(resetWhite);
  //
  
  //eyes + color
  fill(green);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter) ;//Left eye
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter) ;//Right eye
  fill(resetWhite);
  //
  
  //inside eye
  fill(black);
  ellipse(xLeftEyePupil, yLeftEyePupil, pupilDiameter, pupilDiameter);
  ellipse(xRIghtEyePupil, yRightEyePupil, pupilDiameter, pupilDiameter);
  fill(resetWhite);
  //
  
  //nose + mouth + frekles + color
  fill(pink);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);//Nose
  fill(resetWhite);
  //ellipse(); //frekles
  strokeCap(ROUND); //Default is ROUND; PROJECT is another option  //sets style for line endings, 3options: SQUARE, ROUND, EXTENDED(all caps)
  strokeWeight(thack);//sets width of stroke used for lines, points and borders of shapes; width units: pixel;(option 1 is default)
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1);
  //


 
  
  
  //cat ears + color
  fill(brownorange);
  triangle(xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar);
  fill(lightblack);
  triangle(xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar);
  fill(pink);
  triangle(xbottomrightRightCatEarInside, ybottomrightRightCatEarInside, xtoprightRightCatEarInside, ytoprightRightCatEarInside, xcenterRightCatEarInside, ycenterRightCatEarInside);
  triangle(xbottomleftLeftCatEarInside, ybottomleftLeftCatEarInside, xtopleftLeftCatEarInside, ytopleftLeftCatEarInside, xcenterLeftCatEarInside, ycenterLeftCatEarInside);
  //
  

  //whiskers
  line(xCenterPoint, yCenterPoint, xRightTop, yRightTop);
  line(xCenterPoint, yCenterPoint, xRightBottom, yRightBottom);
  line(xCenterPoint, yCenterPoint, xLeftTop, yLeftTop);
  line(xCenterPoint, yCenterPoint, xLeftBottom, yLeftBottom);
  fill(resetWhite);
  //
} 
float xFace, yFace, widthDiamterFace, heightDiamterFace, faceRadius, smallerDimension;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth, xCenterMouth, yCenterMouth;
float xbottomleftLeftCatEar, ybottomleftLeftCatEar, xtopleftLeftCatEar, ytopleftLeftCatEar, xcenterLeftCatEar, ycenterLeftCatEar;
float xbottomleftLeftCatEarInside, ybottomleftLeftCatEarInside, xtopleftLeftCatEarInside, ytopleftLeftCatEarInside, xcenterLeftCatEarInside, ycenterLeftCatEarInside;
float xbottomrightRightCatEar, ybottomrightRightCatEar, xtoprightRightCatEar, ytoprightRightCatEar, xcenterRightCatEar, ycenterRightCatEar;
float xbottomrightRightCatEarInside, ybottomrightRightCatEarInside, xtoprightRightCatEarInside, ytoprightRightCatEarInside, xcenterRightCatEarInside, ycenterRightCatEarInside;
float xStar1, yStar1, starDiameter;
float xStar2, yStar2;
float xSnow1, ySnow1, xSnow2, ySnow2, snowDiameter;
int iceBlue = 0xff60ECFA, skyBlue = 0xff4785FC;

int thack = 5;
float xMeasle, yMeasle, measleDiameter;
float xCenter, yCenter;
int resetWhite = 0xffFFFFFF, red = 0xffFF0000, green = 0xff44F08A, black = 0xff000000, lightblack = 0xff393939, pink = 0xffFA86EF, gold = 0xffFAF360; //this is not populated as population needs display(hence why unique)
// color, is similar to an int declaration 
int brownorange = 0xffF0B444;
boolean nightMode = false; //means night mode is off(bluelight on)
int backgroundColor;
float xCenterPoint, yCenterPoint, xRightTop, yRightTop, xRightBottom, yRightBottom, xLeftTop, yLeftTop, xLeftBottom, yLeftBottom;

float xRIghtEyePupil, yRightEyePupil, pupilDiameter, xLeftEyePupil, yLeftEyePupil;

float xLeftEyePatch, yLeftEyePatch, patchDiameter;




public void populationVariables(){
  
    
  //Population - Face
  xFace = xCenter;
  yFace = yCenter;
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
  yLeftNostril = yCenter + yCenter*1/8;
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
  
  
  
  //Population - inside of Cat Ears
  fill(pink);
  xbottomrightRightCatEarInside = xCenter + faceRadius*3/4;
  ybottomrightRightCatEarInside = yCenter - yCenter*1/4;
  xtoprightRightCatEarInside = xCenter + faceRadius*3/4;
  ytoprightRightCatEarInside = yCenter - yCenter*3/4;
  xcenterRightCatEarInside = xCenter + xCenter*10/53 ;
  ycenterRightCatEarInside = yCenter - yCenter*3/4;
  
  xbottomleftLeftCatEarInside = xCenter - faceRadius*3/4;
  ybottomleftLeftCatEarInside = yCenter - yCenter*1/4;
  xtopleftLeftCatEarInside = xCenter - faceRadius*3/4;
  ytopleftLeftCatEarInside = yCenter - yCenter*3/4;
  xcenterLeftCatEarInside = xCenter - xCenter*10/53;
  ycenterLeftCatEarInside = yCenter - yCenter*3/4;
 
  //End Population inside of Cat Ears
  
  
  
  
  
  //Population Cat Whiskers
  xCenterPoint = xCenter;
  yCenterPoint = yCenter;
  xRightTop =  xCenter + xCenter*2/3;
  yRightTop = yCenter - yCenter*1/5; //262.5 //have to show formula; note: 262.5!=yCenter - yCenter*1/5, it was just apprx. the value, but i calculated the actual maths using circles to find 262.5 and 337.5
  xRightBottom = xCenter + xCenter*2/3;
  yRightBottom = yCenter + yCenter*1/5; //337.5; //have to show the formula
  xLeftTop = xCenter - xCenter*2/3;
  yLeftTop = yCenter - yCenter*1/5; //262.5; //have to show formula
  xLeftBottom = xCenter - xCenter*2/3;
  yLeftBottom = yCenter + yCenter*1/5;//337.5; //have to show formula
    //End Population of Cat Whiskers
  
  
  //Population of Eye Pupils
  xLeftEyePupil = xCenter - xCenter*1/4;
  yLeftEyePupil = yCenter - yCenter*1/4;
  pupilDiameter = smallerDimension*1/20;
  xRIghtEyePupil = xCenter + xCenter*1/4;
  yRightEyePupil = yCenter - yCenter*1/4;
  //End Population of Eye Pupils
  
  
  //Population of Eye patch
  xLeftEyePatch = xCenter - xCenter*1/4;
  yLeftEyePatch = yCenter - yCenter*1/4;
  patchDiameter = smallerDimension*1/2;
  //End Population of Eye patch
  
  
  
  
}
  public void settings() {  size(800, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Measles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
