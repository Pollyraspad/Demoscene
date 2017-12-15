import ddf.minim.*; 
import ddf.minim.analysis.*; 
Minim minim; 
AudioPlayer player; 
AudioMetaData meta; 
BeatDetect beat; 
void setup() 
{ 
size(displayWidth,displayWidth); 
minim = new Minim(this); 
player = minim.loadFile("pesnya.mp3"); 
meta = player.getMetaData(); 
beat = new BeatDetect(); 
player.loop();  
colorMode(RGB, 1); 
noCursor(); 
} 
void draw() 
{ 
beat.detect(player.mix); 
fill(#38023B, 40); 
noStroke(); 
rect(0, 0, width, height); 
translate(width/2, height/2); 
}