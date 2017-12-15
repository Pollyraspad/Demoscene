import ddf.minim.*;
import ddf.minim.analysis.*;
Minim minim;
AudioPlayer player;
AudioMetaData meta;
BeatDetect beat;
int r = 200;
void setup() {
    size(640, 480);
    minim = new Minim(this);
    player = minim.loadFile("neon.mp3");
    meta = player.getMetaData();
    beat = new BeatDetect();
    player.loop();
    colorMode(RGB, 1);
}
void draw() {
        beat.detect(player.mix);
        fill(#38023B, 40); 

noStroke(); 

rect(0, 0, width, height); 

translate(width/2, height/2); 





stroke(-1, 75); 

int bsize = player.bufferSize();
            for (int i = 0; i < bsize - 1; i += 5) {
                float x = (r) * cos(i * bsize);
                float y = (r) * sin(i * bsize);
                float x2 = (r + player.left.get(i) * 100) * cos(i * 2 * PI / bsize);
                float y2 = (r + player.left.get(i) * 100) * sin(i * 2 * PI / bsize);
                line(x, y, x2, y2);
            }
        }