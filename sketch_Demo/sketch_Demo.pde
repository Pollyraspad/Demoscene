import ddf.minim.*; 
import ddf.minim.analysis.*; 
Minim minim; 
AudioPlayer player; 
AudioMetaData meta; 
BeatDetect beat; 
void setup() 
{ 
size(640,480); 
minim = new Minim(this); 
player = minim.loadFile("pesnya.mp3"); 
meta = player.getMetaData(); 
beat = new BeatDetect(); 
player.loop(); 
} 
void draw() 
{ 
beat.detect(player.mix); 
}