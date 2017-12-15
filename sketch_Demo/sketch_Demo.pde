import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn in;

void setup() {
  size(2000,1000);
  background(255);
   
  file = new SoundFile(this, "pesnya.mp3");
  file.play();

}
void draw(){
}