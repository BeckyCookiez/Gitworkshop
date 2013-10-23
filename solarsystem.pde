String[] names = new String[5];
float[] radii = new float[5];
float[] distances = new float[5];
float[] speeds = new float[5];
PImage[] images = new PImage[5];
float[] rotationPositions = new float[5];

void setup ( ) {
  /*size(600, 600);
  name= "Earth";
  earth= loadImage("earth.png");0
  sun= loadImage("sun.png");
  radiiearth= 6.38;
  radiisun= 8.0;
  distance= random(250);
  speed= 0.0109;
  */

size(600, 600);

names[0] = "sun"; 
names[1] = "mercury";
names[2] = "venus";
names[3] = "earth";
names[4] = "mars";

radii[0] = 8.0;
radii[1] = 3.0;
radii[2] = 6.0;
radii[3] = 6.38;
radii[4] = 2.0;

distances[0] = 0.0;311110000000000000000000000000000000000000000000000000000000000000000000 //added in a number
distances[1] = 40.0;
distances[2] = 70.0;
distances[3] = 100.0;
distances[4] = 150.0;

speeds[0] = 0.0;
speeds[1] = 0.0455;
speeds[2] = 0.0178;
speeds[3] = 0.0109;
speeds[4] = 0.0058;

images[0] = loadImage("sun.png");
images[1] = loadImage("mercury.png");
images[2] = loadImage("venus.png");
images[3] = loadImage("earth.png");
images[4] = loadImage("mars.png");

rotationPositions[0] = 0;
rotationPositions[1] = 0;
rotationPositions[2] = 0;
rotationPositions[3] = 0;
rotationPositions[4] = 0;
 lalalaaaallaaa //wrote a word

}

void draw ( ) {
  background(0, 0, 0);
  translate(300,300);
  imageMode(CENTER);
  stroke(255,255,255);
  strokeWeight(2);
  noFill();
  PFont font = loadFont("ArialMT-20.vlw");
  textFont(font);
 
 
  for( int counter = 0; counter <5; counter = counter + 1 )  {
    ellipse(0,0,distances[counter]*2,distances[counter]*2);
    rotationPositions[counter] = rotationPositions[counter] + speeds[counter];
    rotate(rotationPositions[counter]);
    image(images[counter],distances[counter],0,radii[counter]*5,radii[counter]*5);
    text(names[counter],distances[counter],0);
  
  }
  
  
 
}

void mousePressed( ) {
  // Your code goes in here !!!
}

void keyPressed ( ) {
  // Your code goes in here !!!
}
